import tkinter as tk
from tkinter import ttk, filedialog, messagebox, scrolledtext
import re
import sys
import io
import traceback
from enum import Enum
from dataclasses import dataclass
from typing import Any, Dict, List, Optional, Tuple
import threading
from datetime import datetime
import webbrowser
from urllib.parse import urlparse, urlunparse


# ============================================================
# EARTH LANGUAGE LEXER
# ============================================================

class TokenType(Enum):
    # Keywords
    DEFINE = "define"
    IF = "if"
    ELSE = "else"
    FOR = "for"
    WHILE = "while"
    IN = "in"
    RETURN = "return"
    PRINT = "print"
    INPUT = "input"
    IMPORT = "import"
    FROM = "from"
    CLASS = "class"
    TRY = "try"
    CATCH = "catch"
    FINALLY = "finally"
    RAISE = "raise"
    PASS = "pass"
    BREAK = "break"
    CONTINUE = "continue"
    AND = "and"
    OR = "or"
    NOT = "not"
    TRUE = "True"
    FALSE = "False"
    NONE = "None"
    AS = "as"
    WITH = "with"
    YIELD = "yield"
    LAMBDA = "lambda"
    ASSERT = "assert"
    DEL = "del"
    GLOBAL = "global"
    NONLOCAL = "nonlocal"
    
    # Operators
    PLUS = "+"
    MINUS = "-"
    MULTIPLY = "*"
    DIVIDE = "/"
    MODULO = "%"
    POWER = "**"
    FLOOR_DIVIDE = "//"
    EQUAL = "="
    EQUALS = "=="
    NOT_EQUALS = "!="
    LESS = "<"
    GREATER = ">"
    LESS_EQUAL = "<="
    GREATER_EQUAL = ">="
    AND_OP = "&&"
    OR_OP = "||"
    NOT_OP = "!"
    BIT_AND = "&"
    BIT_OR = "|"
    BIT_XOR = "^"
    BIT_NOT = "~"
    LEFT_SHIFT = "<<"
    RIGHT_SHIFT = ">>"
    IN_PLACE_ADD = "+="
    IN_PLACE_SUB = "-="
    IN_PLACE_MUL = "*="
    IN_PLACE_DIV = "/="
    
    # Delimiters
    LPAREN = "("
    RPAREN = ")"
    LBRACKET = "["
    RBRACKET = "]"
    LBRACE = "{"
    RBRACE = "}"
    COMMA = ","
    DOT = "."
    COLON = ":"
    SEMICOLON = ";"
    ARROW = "->"
    
    # Literals
    IDENTIFIER = "IDENTIFIER"
    NUMBER = "NUMBER"
    STRING = "STRING"
    COMMENT = "COMMENT"
    
    # Special
    NEWLINE = "NEWLINE"
    INDENT = "INDENT"
    DEDENT = "DEDENT"
    EOF = "EOF"


@dataclass
class Token:
    type: TokenType
    value: Any
    line: int
    column: int
    
    def __repr__(self):
        return f"Token({self.type.value}, {self.value!r}, line={self.line})"


class EarthLexer:
    """Lexer for Earth programming language"""
    
    KEYWORDS = {
        'define': TokenType.DEFINE,
        'if': TokenType.IF,
        'else': TokenType.ELSE,
        'for': TokenType.FOR,
        'while': TokenType.WHILE,
        'in': TokenType.IN,
        'return': TokenType.RETURN,
        'import': TokenType.IMPORT,
        'from': TokenType.FROM,
        'print': TokenType.PRINT,
        'input': TokenType.INPUT,
        'class': TokenType.CLASS,
        'try': TokenType.TRY,
        'catch': TokenType.CATCH,
        'finally': TokenType.FINALLY,
        'raise': TokenType.RAISE,
        'pass': TokenType.PASS,
        'break': TokenType.BREAK,
        'continue': TokenType.CONTINUE,
        'and': TokenType.AND,
        'or': TokenType.OR,
        'not': TokenType.NOT,
        'True': TokenType.TRUE,
        'False': TokenType.FALSE,
        'None': TokenType.NONE,
        'as': TokenType.AS,
        'with': TokenType.WITH,
        'yield': TokenType.YIELD,
        'lambda': TokenType.LAMBDA,
        'assert': TokenType.ASSERT,
        'del': TokenType.DEL,
        'global': TokenType.GLOBAL,
        'nonlocal': TokenType.NONLOCAL,
    }
    
    OPERATORS = {
        '+': TokenType.PLUS,
        '-': TokenType.MINUS,
        '*': TokenType.MULTIPLY,
        '/': TokenType.DIVIDE,
        '%': TokenType.MODULO,
        '**': TokenType.POWER,
        '//': TokenType.FLOOR_DIVIDE,
        '=': TokenType.EQUAL,
        '==': TokenType.EQUALS,
        '!=': TokenType.NOT_EQUALS,
        '<': TokenType.LESS,
        '>': TokenType.GREATER,
        '<=': TokenType.LESS_EQUAL,
        '>=': TokenType.GREATER_EQUAL,
        '&&': TokenType.AND_OP,
        '||': TokenType.OR_OP,
        '!': TokenType.NOT_OP,
        '&': TokenType.BIT_AND,
        '|': TokenType.BIT_OR,
        '^': TokenType.BIT_XOR,
        '~': TokenType.BIT_NOT,
        '<<': TokenType.LEFT_SHIFT,
        '>>': TokenType.RIGHT_SHIFT,
        '+=': TokenType.IN_PLACE_ADD,
        '-=': TokenType.IN_PLACE_SUB,
        '*=': TokenType.IN_PLACE_MUL,
        '/=': TokenType.IN_PLACE_DIV,
        '->': TokenType.ARROW,
    }
    
    DELIMITERS = {
        '(': TokenType.LPAREN,
        ')': TokenType.RPAREN,
        '[': TokenType.LBRACKET,
        ']': TokenType.RBRACKET,
        '{': TokenType.LBRACE,
        '}': TokenType.RBRACE,
        ',': TokenType.COMMA,
        '.': TokenType.DOT,
        ':': TokenType.COLON,
        ';': TokenType.SEMICOLON,
    }
    
    def __init__(self, source: str):
        self.source = source
        self.pos = 0
        self.line = 1
        self.col = 1
        self.tokens = []
        
    def tokenize(self) -> List[Token]:
        """Convert source code to list of tokens"""
        while self.pos < len(self.source):
            self._skip_whitespace()
            
            if self.pos >= len(self.source):
                break
                
            # Check for comments
            if self.source[self.pos] == '#':
                self._read_comment()
                continue
                
            # Check for strings
            if self.source[self.pos] in ('"', "'"):
                self._read_string()
                continue
                
            # Check for numbers
            if self.source[self.pos].isdigit():
                self._read_number()
                continue
                
            # Check for identifiers and keywords
            if self.source[self.pos].isalpha() or self.source[self.pos] == '_':
                self._read_identifier()
                continue
                
            # Check for operators and delimiters
            # Try multi-character operators first
            matched = False
            for op_len in range(2, 0, -1):
                if self.pos + op_len <= len(self.source):
                    op = self.source[self.pos:self.pos + op_len]
                    if op in self.OPERATORS:
                        self._add_token(self.OPERATORS[op], op)
                        self.pos += op_len
                        self.col += op_len
                        matched = True
                        break
                    
            if matched:
                continue
                
            # Single character delimiters
            char = self.source[self.pos]
            if char in self.DELIMITERS:
                self._add_token(self.DELIMITERS[char], char)
                self.pos += 1
                self.col += 1
                continue
                
            # Handle indentation (will be handled by parser)
            if char == '\n':
                self._add_token(TokenType.NEWLINE, '\n')
                self.pos += 1
                self.line += 1
                self.col = 1
                continue
                
            # Unknown character
            raise SyntaxError(f"Unknown character '{char}' at line {self.line}, column {self.col}")
            
        self._add_token(TokenType.EOF, None)
        return self.tokens
    
    def _skip_whitespace(self):
        """Skip whitespace characters (not newlines)"""
        while self.pos < len(self.source) and self.source[self.pos] in ' \t\r':
            if self.source[self.pos] == '\t':
                self.col += 4
            else:
                self.col += 1
            self.pos += 1
            
    def _read_comment(self):
        """Read a comment until newline"""
        start_pos = self.pos
        while self.pos < len(self.source) and self.source[self.pos] != '\n':
            self.pos += 1
        # Comment token for documentation
        comment_text = self.source[start_pos:self.pos]
        self._add_token(TokenType.COMMENT, comment_text)
        
    def _read_string(self):
        """Read a string literal"""
        quote_char = self.source[self.pos]
        start_pos = self.pos
        self.pos += 1
        self.col += 1
        
        while self.pos < len(self.source):
            if self.source[self.pos] == '\\':
                self.pos += 2
                continue
            if self.source[self.pos] == quote_char:
                self.pos += 1
                break
            if self.source[self.pos] == '\n':
                raise SyntaxError(f"Unterminated string at line {self.line}")
            self.pos += 1
            
        string_value = self.source[start_pos:self.pos]
        self._add_token(TokenType.STRING, eval(string_value))
        self.col += len(string_value)
        
    def _read_number(self):
        """Read a numeric literal (integer or float)"""
        start_pos = self.pos
        is_float = False
        
        while self.pos < len(self.source):
            char = self.source[self.pos]
            if char.isdigit():
                self.pos += 1
            elif char == '.' and not is_float:
                is_float = True
                self.pos += 1
            else:
                break
                
        num_str = self.source[start_pos:self.pos]
        value = float(num_str) if is_float else int(num_str)
        self._add_token(TokenType.NUMBER, value)
        self.col += len(num_str)
        
    def _read_identifier(self):
        """Read an identifier or keyword"""
        start_pos = self.pos
        
        while self.pos < len(self.source):
            char = self.source[self.pos]
            if char.isalnum() or char == '_':
                self.pos += 1
            else:
                break
                
        identifier = self.source[start_pos:self.pos]
        
        # Check if it's a keyword
        token_type = self.KEYWORDS.get(identifier, TokenType.IDENTIFIER)
        self._add_token(token_type, identifier)
        self.col += len(identifier)
        
    def _add_token(self, token_type: TokenType, value: Any):
        """Add a token to the list"""
        self.tokens.append(Token(token_type, value, self.line, self.col))


# ============================================================
# EARTH LANGUAGE PARSER AND AST
# ============================================================

class ASTNode:
    pass

class Program(ASTNode):
    def __init__(self, statements):
        self.statements = statements

class DefineFunction(ASTNode):
    def __init__(self, name, params, body):
        self.name = name
        self.params = params
        self.body = body

class DefineClass(ASTNode):
    def __init__(self, name, bases, body):
        self.name = name
        self.bases = bases
        self.body = body

class IfStatement(ASTNode):
    def __init__(self, condition, then_body, else_body=None):
        self.condition = condition
        self.then_body = then_body
        self.else_body = else_body

class ForLoop(ASTNode):
    def __init__(self, variable, iterable, body, else_body=None):
        self.variable = variable
        self.iterable = iterable
        self.body = body
        self.else_body = else_body

class WhileLoop(ASTNode):
    def __init__(self, condition, body, else_body=None):
        self.condition = condition
        self.body = body
        self.else_body = else_body

class ReturnStatement(ASTNode):
    def __init__(self, value):
        self.value = value

class ImportStatement(ASTNode):
    def __init__(self, modules):
        self.modules = modules

class BinaryOp(ASTNode):
    def __init__(self, left, operator, right):
        self.left = left
        self.operator = operator
        self.right = right

class UnaryOp(ASTNode):
    def __init__(self, operator, operand):
        self.operator = operator
        self.operand = operand

class Call(ASTNode):
    def __init__(self, function, arguments):
        self.function = function
        self.arguments = arguments

class Variable(ASTNode):
    def __init__(self, name):
        self.name = name

class NumberLiteral(ASTNode):
    def __init__(self, value):
        self.value = value

class StringLiteral(ASTNode):
    def __init__(self, value):
        self.value = value

class BooleanLiteral(ASTNode):
    def __init__(self, value):
        self.value = value

class NoneLiteral(ASTNode):
    pass

class Assignment(ASTNode):
    def __init__(self, name, value):
        self.name = name
        self.value = value

class PrintStatement(ASTNode):
    def __init__(self, values):
        self.values = values

class InputStatement(ASTNode):
    def __init__(self, prompt):
        self.prompt = prompt

class ListLiteral(ASTNode):
    def __init__(self, elements):
        self.elements = elements

class DictLiteral(ASTNode):
    def __init__(self, items):
        self.items = items

class AttributeAccess(ASTNode):
    def __init__(self, obj, attr):
        self.obj = obj
        self.attr = attr

class ListComprehension(ASTNode):
    def __init__(self, expr, var, iterable, condition=None):
        self.expr = expr
        self.var = var
        self.iterable = iterable
        self.condition = condition

class InOperator(ASTNode):
    def __init__(self, left, right):
        self.left = left
        self.right = right

class TryExcept(ASTNode):
    def __init__(self, try_body, handlers, finally_body=None):
        self.try_body = try_body
        self.handlers = handlers
        self.finally_body = finally_body

class ExceptHandler(ASTNode):
    def __init__(self, exception_type, variable, body):
        self.exception_type = exception_type
        self.variable = variable
        self.body = body


class EarthParser:
    """Parser for Earth programming language"""
    
    def __init__(self, tokens: List[Token]):
        self.tokens = tokens
        self.pos = 0
        
    def parse(self) -> Program:
        """Parse tokens into AST"""
        statements = []
        
        while not self._is_at_end():
            stmt = self._parse_statement()
            if stmt:
                statements.append(stmt)
                
        return Program(statements)
    
    def _parse_statement(self):
        """Parse a single statement"""
        if self._match(TokenType.DEFINE):
            return self._parse_define()
        elif self._match(TokenType.IF):
            return self._parse_if()
        elif self._match(TokenType.FOR):
            return self._parse_for()
        elif self._match(TokenType.WHILE):
            return self._parse_while()
        elif self._match(TokenType.RETURN):
            return self._parse_return()
        elif self._match(TokenType.IMPORT):
            return self._parse_import()
        elif self._match(TokenType.CLASS):
            return self._parse_class()
        elif self._match(TokenType.TRY):
            return self._parse_try()
        elif self._match(TokenType.PRINT):
            return self._parse_print()
        elif self._match(TokenType.INPUT):
            return self._parse_input()
        else:
            return self._parse_expression_statement()
    
    def _parse_define(self):
        """Parse function definition: define name(params): body"""
        name = self._consume(TokenType.IDENTIFIER, "Expected function name").value
        
        self._consume(TokenType.LPAREN, "Expected '(' after function name")
        params = []
        
        if not self._check(TokenType.RPAREN):
            while True:
                param = self._consume(TokenType.IDENTIFIER, "Expected parameter name").value
                params.append(param)
                if not self._match(TokenType.COMMA):
                    break
                    
        self._consume(TokenType.RPAREN, "Expected ')' after parameters")
        
        # Optional return type annotation
        if self._match(TokenType.ARROW):
            self._advance()  # Skip the type for now
        
        self._consume(TokenType.COLON, "Expected ':' after function definition")
        
        # Parse function body (indented block)
        body = self._parse_block()
        
        return DefineFunction(name, params, body)
    
    def _parse_class(self):
        """Parse class definition: class Name(Base): body"""
        name = self._consume(TokenType.IDENTIFIER, "Expected class name").value
        
        bases = []
        if self._match(TokenType.LPAREN):
            while not self._check(TokenType.RPAREN) and not self._is_at_end():
                base = self._consume(TokenType.IDENTIFIER, "Expected base class name").value
                bases.append(base)
                if not self._match(TokenType.COMMA):
                    break
            self._consume(TokenType.RPAREN, "Expected ')' after base classes")
            
        self._consume(TokenType.COLON, "Expected ':' after class name")
        body = self._parse_block()
        
        return DefineClass(name, bases, body)
    
    def _parse_if(self):
        """Parse if statement"""
        condition = self._parse_expression()
        self._consume(TokenType.COLON, "Expected ':' after if condition")
        then_body = self._parse_block()
        
        else_body = None
        if self._match(TokenType.ELSE):
            self._consume(TokenType.COLON, "Expected ':' after else")
            else_body = self._parse_block()
            
        return IfStatement(condition, then_body, else_body)
    
    def _parse_for(self):
        """Parse for loop: for var in iterable: body else: body"""
        var = self._consume(TokenType.IDENTIFIER, "Expected loop variable").value
        self._consume(TokenType.IN, "Expected 'in' after loop variable")
        iterable = self._parse_expression()
        self._consume(TokenType.COLON, "Expected ':' after iterable")
        body = self._parse_block()
        
        else_body = None
        if self._match(TokenType.ELSE):
            self._consume(TokenType.COLON, "Expected ':' after else")
            else_body = self._parse_block()
            
        return ForLoop(var, iterable, body, else_body)
    
    def _parse_while(self):
        """Parse while loop"""
        condition = self._parse_expression()
        self._consume(TokenType.COLON, "Expected ':' after while condition")
        body = self._parse_block()
        
        else_body = None
        if self._match(TokenType.ELSE):
            self._consume(TokenType.COLON, "Expected ':' after else")
            else_body = self._parse_block()
            
        return WhileLoop(condition, body, else_body)
    
    def _parse_return(self):
        """Parse return statement"""
        if self._check(TokenType.NEWLINE) or self._check(TokenType.EOF):
            value = None
        else:
            value = self._parse_expression()
        return ReturnStatement(value)
    
    def _parse_import(self):
        """Parse import statement"""
        modules = []
        while not self._check(TokenType.NEWLINE) and not self._check(TokenType.EOF) and not self._check(TokenType.SEMICOLON):
            module_parts = []
            if self._check(TokenType.IDENTIFIER) or self._check(TokenType.STRING):
                module_parts.append(str(self._advance().value))
                while self._match(TokenType.DOT):
                    if self._check(TokenType.IDENTIFIER):
                        module_parts.append(str(self._advance().value))
                    else:
                        break
            
            module = ".".join(module_parts)
            alias = None
            if self._match(TokenType.AS):
                alias = self._consume(TokenType.IDENTIFIER, "Expected alias name").value
            
            if module:
                modules.append((module, alias))
            
            if not self._match(TokenType.COMMA):
                break
                
        return ImportStatement(modules)
    
    def _parse_print(self):
        """Parse print statement: print(expression, ...)"""
        self._consume(TokenType.LPAREN, "Expected '(' after print")
        values = []
        
        if not self._check(TokenType.RPAREN):
            while True:
                values.append(self._parse_expression())
                if not self._match(TokenType.COMMA):
                    break
                    
        self._consume(TokenType.RPAREN, "Expected ')' after print arguments")
        return PrintStatement(values)
    
    def _parse_input(self):
        """Parse input statement: input(prompt)"""
        self._consume(TokenType.LPAREN, "Expected '(' after input")
        prompt = self._parse_expression()
        self._consume(TokenType.RPAREN, "Expected ')' after input prompt")
        return InputStatement(prompt)
    
    def _parse_expression_statement(self):
        """Parse an expression as a statement"""
        expr = self._parse_expression()
        
        # Check for assignment
        if self._match(TokenType.EQUAL):
            value = self._parse_expression()
            if isinstance(expr, Variable):
                return Assignment(expr.name, value)
            else:
                raise SyntaxError("Invalid assignment target")
                
        return expr
    
    def _parse_block(self):
        """Parse an indented block of statements"""
        self._consume(TokenType.NEWLINE, "Expected newline after ':'")
        
        # Read indentation (simplified - assume consistent indentation)
        statements = []
        
        # Skip initial newlines
        while self._check(TokenType.NEWLINE):
            self._advance()
            
        while not self._is_at_end() and not self._check(TokenType.DEDENT) and not self._check(TokenType.EOF):
            stmt = self._parse_statement()
            if stmt:
                statements.append(stmt)
            
            # Skip newlines between statements
            while self._check(TokenType.NEWLINE):
                self._advance()
                
        return statements
    
    def _parse_expression(self, precedence=0):
        """Parse expression with precedence"""
        return self._parse_comparison()
    
    def _parse_comparison(self):
        """Parse comparison expressions"""
        left = self._parse_term()
        
        while self._match(TokenType.LESS, TokenType.GREATER, TokenType.LESS_EQUAL, TokenType.GREATER_EQUAL,
                          TokenType.EQUALS, TokenType.NOT_EQUALS, TokenType.IN):
            operator = self._previous().type
            right = self._parse_term()
            left = BinaryOp(left, operator, right)
            
        return left
    
    def _parse_term(self):
        """Parse addition/subtraction"""
        left = self._parse_factor()
        
        while self._match(TokenType.PLUS, TokenType.MINUS):
            operator = self._previous().type
            right = self._parse_factor()
            left = BinaryOp(left, operator, right)
            
        return left
    
    def _parse_factor(self):
        """Parse multiplication/division"""
        left = self._parse_unary()
        
        while self._match(TokenType.MULTIPLY, TokenType.DIVIDE, TokenType.MODULO, TokenType.POWER, TokenType.FLOOR_DIVIDE):
            operator = self._previous().type
            right = self._parse_unary()
            left = BinaryOp(left, operator, right)
            
        return left
    
    def _parse_unary(self):
        """Parse unary operators"""
        if self._match(TokenType.MINUS, TokenType.NOT, TokenType.BIT_NOT):
            operator = self._previous().type
            operand = self._parse_unary()
            return UnaryOp(operator, operand)
            
        return self._parse_primary()
    
    def _parse_primary(self):
        """Parse primary expressions (literals, variables, parenthesized)"""
        if self._match(TokenType.NUMBER):
            return NumberLiteral(self._previous().value)
            
        if self._match(TokenType.STRING):
            return StringLiteral(self._previous().value)
            
        if self._match(TokenType.TRUE):
            return BooleanLiteral(True)
            
        if self._match(TokenType.FALSE):
            return BooleanLiteral(False)
            
        if self._match(TokenType.NONE):
            return NoneLiteral()
            
        if self._match(TokenType.LPAREN):
            expr = self._parse_expression()
            self._consume(TokenType.RPAREN, "Expected ')' after expression")
            return expr
            
        if self._match(TokenType.LBRACKET):
            elements = []
            if not self._check(TokenType.RBRACKET):
                while True:
                    elements.append(self._parse_expression())
                    if not self._match(TokenType.COMMA):
                        break
            self._consume(TokenType.RBRACKET, "Expected ']' after list")
            return ListLiteral(elements)
            
        if self._match(TokenType.IDENTIFIER):
            name = self._previous().value
            
            # Function call
            if self._match(TokenType.LPAREN):
                arguments = []
                if not self._check(TokenType.RPAREN):
                    while True:
                        arguments.append(self._parse_expression())
                        if not self._match(TokenType.COMMA):
                            break
                self._consume(TokenType.RPAREN, "Expected ')' after arguments")
                return Call(Variable(name), arguments)
                
            # Attribute access
            if self._match(TokenType.DOT):
                attr = self._consume(TokenType.IDENTIFIER, "Expected attribute name").value
                return AttributeAccess(Variable(name), attr)
                
            return Variable(name)
            
        raise SyntaxError(f"Unexpected token: {self._peek()}")
    
    def _match(self, *types):
        """Check if current token matches any of the given types and advance"""
        for token_type in types:
            if self._check(token_type):
                self._advance()
                return True
        return False
    
    def _check(self, token_type: TokenType):
        """Check if current token is of given type"""
        if self._is_at_end():
            return False
        return self._peek().type == token_type
    
    def _advance(self):
        """Advance to next token"""
        if not self._is_at_end():
            self.pos += 1
        return self._previous()
    
    def _peek(self):
        """Return current token"""
        return self.tokens[self.pos]
    
    def _previous(self):
        """Return previous token"""
        return self.tokens[self.pos - 1]
    
    def _is_at_end(self):
        """Check if at end of tokens"""
        return self.pos >= len(self.tokens) or self._peek().type == TokenType.EOF
    
    def _consume(self, token_type: TokenType, message: str):
        """Consume token of expected type or raise error"""
        if self._check(token_type):
            return self._advance()
        raise SyntaxError(f"{message} at line {self._peek().line}")


# ============================================================
# EARTH LANGUAGE INTERPRETER
# ============================================================

class EarthInterpreter:
    """Interpreter for Earth language AST"""
    
    def __init__(self):
        self.globals = {}
        self.locals = {}
        self.functions = {}
        self.classes = {}
        self.output_buffer = io.StringIO()
        self.input_callback = None
        
        # Add built-in functions
        self._add_builtins()
        
    def _add_builtins(self):
        """Add built-in functions to global scope"""
        import math
        
        self.globals['print'] = self._builtin_print
        self.globals['input'] = self._builtin_input
        self.globals['len'] = len
        self.globals['range'] = range
        self.globals['int'] = int
        self.globals['float'] = float
        self.globals['str'] = str
        self.globals['list'] = list
        self.globals['dict'] = dict
        self.globals['type'] = type
        self.globals['max'] = max
        self.globals['min'] = min
        self.globals['sum'] = sum
        self.globals['sorted'] = sorted
        self.globals['abs'] = abs
        self.globals['isinstance'] = isinstance
        self.globals['callable'] = callable
        self.globals['tuple'] = tuple
        self.globals['set'] = set
        self.globals['object'] = object
        self.globals['hasattr'] = hasattr
        self.globals['getattr'] = getattr
        self.globals['bool'] = bool
        
        # Math functions
        self.globals['math'] = math
        self.globals['sqrt'] = math.sqrt
        self.globals['sin'] = math.sin
        self.globals['cos'] = math.cos
        self.globals['tan'] = math.tan
        self.globals['pi'] = math.pi
        
    def _builtin_print(self, *args):
        """Built-in print function"""
        output = ' '.join(str(arg) for arg in args)
        self.output_buffer.write(output + '\n')
        return None
        
    def _builtin_input(self, prompt=""):
        """Built-in input function"""
        self.output_buffer.write(str(prompt))
        if self.input_callback:
            return self.input_callback()
        return ""
        
    def evaluate(self, node: ASTNode, context: dict = None) -> Any:
        """Evaluate an AST node"""
        if context is None:
            context = self.globals.copy()
            
        if isinstance(node, Program):
            result = None
            for stmt in node.statements:
                result = self.evaluate(stmt, context)
            return result
            
        elif isinstance(node, DefineFunction):
            self.functions[node.name] = node
            return node
            
        elif isinstance(node, DefineClass):
            # Create class object
            class_dict = {}
            for stmt in node.body:
                if isinstance(stmt, DefineFunction):
                    class_dict[stmt.name] = stmt
            self.classes[node.name] = class_dict
            context[node.name] = class_dict
            return class_dict
            
        elif isinstance(node, IfStatement):
            condition = self.evaluate(node.condition, context)
            if self._is_truthy(condition):
                return self._execute_block(node.then_body, context)
            elif node.else_body:
                return self._execute_block(node.else_body, context)
                
        elif isinstance(node, ForLoop):
            iterable = self.evaluate(node.iterable, context)
            result = None
            completed_normally = True
            
            for item in iterable:
                new_context = context.copy()
                new_context[node.variable] = item
                try:
                    result = self._execute_block(node.body, new_context)
                except BreakException:
                    completed_normally = False
                    break
                except ContinueException:
                    continue
                    
            if completed_normally and node.else_body:
                result = self._execute_block(node.else_body, context)
            return result
            
        elif isinstance(node, WhileLoop):
            result = None
            completed_normally = True
            
            while self._is_truthy(self.evaluate(node.condition, context)):
                try:
                    result = self._execute_block(node.body, context)
                except BreakException:
                    completed_normally = False
                    break
                except ContinueException:
                    continue
                    
            if completed_normally and node.else_body:
                result = self._execute_block(node.else_body, context)
            return result
            
        elif isinstance(node, ReturnStatement):
            if node.value:
                raise ReturnException(self.evaluate(node.value, context))
            raise ReturnException(None)
            
        elif isinstance(node, Assignment):
            value = self.evaluate(node.value, context)
            context[node.name] = value
            return value
            
        elif isinstance(node, PrintStatement):
            values = [self.evaluate(v, context) for v in node.values]
            self._builtin_print(*values)
            return None
            
        elif isinstance(node, InputStatement):
            prompt = self.evaluate(node.prompt, context) if node.prompt else ""
            return self._builtin_input(prompt)
            
        elif isinstance(node, BinaryOp):
            left = self.evaluate(node.left, context)
            right = self.evaluate(node.right, context)
            
            if node.operator == TokenType.PLUS:
                return left + right
            elif node.operator == TokenType.MINUS:
                return left - right
            elif node.operator == TokenType.MULTIPLY:
                return left * right
            elif node.operator == TokenType.DIVIDE:
                return left / right
            elif node.operator == TokenType.MODULO:
                return left % right
            elif node.operator == TokenType.POWER:
                return left ** right
            elif node.operator == TokenType.FLOOR_DIVIDE:
                return left // right
            elif node.operator == TokenType.EQUALS:
                return left == right
            elif node.operator == TokenType.NOT_EQUALS:
                return left != right
            elif node.operator == TokenType.LESS:
                return left < right
            elif node.operator == TokenType.GREATER:
                return left > right
            elif node.operator == TokenType.LESS_EQUAL:
                return left <= right
            elif node.operator == TokenType.GREATER_EQUAL:
                return left >= right
            elif node.operator == TokenType.AND_OP:
                return left and right
            elif node.operator == TokenType.OR_OP:
                return left or right
            elif node.operator == TokenType.IN:
                return left in right
            else:
                raise RuntimeError(f"Unknown operator: {node.operator}")
                
        elif isinstance(node, UnaryOp):
            operand = self.evaluate(node.operand, context)
            if node.operator == TokenType.MINUS:
                return -operand
            elif node.operator == TokenType.NOT:
                return not operand
            else:
                raise RuntimeError(f"Unknown unary operator: {node.operator}")
                
        elif isinstance(node, Call):
            function = self.evaluate(node.function, context)
            arguments = [self.evaluate(arg, context) for arg in node.arguments]
            
            if callable(function):
                return function(*arguments)
            elif node.function.name in self.functions:
                func_node = self.functions[node.function.name]
                new_context = context.copy()
                for param, arg in zip(func_node.params, arguments):
                    new_context[param] = arg
                try:
                    return self._execute_block(func_node.body, new_context)
                except ReturnException as e:
                    return e.value
            else:
                raise RuntimeError(f"Unknown function: {node.function.name}")
                
        elif isinstance(node, Variable):
            if node.name in context:
                return context[node.name]
            elif node.name in self.globals:
                return self.globals[node.name]
            else:
                raise RuntimeError(f"Undefined variable: {node.name}")
                
        elif isinstance(node, NumberLiteral):
            return node.value
            
        elif isinstance(node, StringLiteral):
            return node.value
            
        elif isinstance(node, BooleanLiteral):
            return node.value
            
        elif isinstance(node, NoneLiteral):
            return None
            
        elif isinstance(node, ListLiteral):
            return [self.evaluate(elem, context) for elem in node.elements]
            
        elif isinstance(node, AttributeAccess):
            obj = self.evaluate(node.obj, context)
            if hasattr(obj, node.attr):
                return getattr(obj, node.attr)
            elif isinstance(obj, dict) and node.attr in obj:
                return obj[node.attr]
            else:
                raise RuntimeError(f"Attribute '{node.attr}' not found on {obj}")
                
        elif isinstance(node, ImportStatement):
            for module, alias in node.modules:
                context[alias or module] = True
            return True
            
        elif isinstance(node, TryExcept):
            try:
                return self._execute_block(node.try_body, context)
            except Exception as e:
                for handler in node.handlers:
                    if handler.exception_type is None or isinstance(e, Exception):
                        if handler.variable:
                            context[handler.variable] = e
                        return self._execute_block(handler.body, context)
                if node.finally_body:
                    return self._execute_block(node.finally_body, context)
                raise
                
        else:
            raise RuntimeError(f"Unknown node type: {type(node)}")
            
    def _is_truthy(self, value):
        """Check if value is truthy in Earth"""
        if value is None:
            return False
        if isinstance(value, bool):
            return value
        if isinstance(value, (int, float)):
            return value != 0
        if isinstance(value, (str, list, dict, tuple, set)):
            return len(value) > 0
        return True
        
    def _execute_block(self, statements: List[ASTNode], context: dict):
        """Execute a block of statements"""
        result = None
        for stmt in statements:
            result = self.evaluate(stmt, context)
        return result
        
    def get_output(self):
        """Get accumulated output"""
        output = self.output_buffer.getvalue()
        self.output_buffer = io.StringIO()
        return output


class ReturnException(Exception):
    def __init__(self, value):
        self.value = value


class BreakException(Exception):
    pass


class ContinueException(Exception):
    pass


# ============================================================
# EARTH COMPILER GUI
# ============================================================

class EarthCompilerGUI:
    """Main GUI for Earth Language Compiler"""
    
    def __init__(self, root):
        self.root = root
        self.root.title("Earth Language Compiler")
        self.root.geometry("1200x800")
        self.root.configure(bg='#1e1e1e')
        # Compiler URL (can be set to link to remote/local compiler service)
        self.set_compiler_url("https://github.com/neilvikramkhare-beep/Earth/commit/44ac75e6db787934e01d673277072d6f4366306e")
        
        # Set icon and style
        self._setup_styles()
        
        # Create menu bar
        self._create_menu()
        
        # Create main toolbar
        self._create_toolbar()
        
        # Create main paned window
        self.main_paned = ttk.PanedWindow(root, orient=tk.HORIZONTAL)
        self.main_paned.pack(fill=tk.BOTH, expand=True, padx=5, pady=5)
        
        # Editor frame
        self._create_editor_frame()
        
        # Output frame
        self._create_output_frame()
        
        # Status bar
        self._create_status_bar()
        
        # Initialize interpreter
        self.interpreter = EarthInterpreter()
        self.current_file = None
        self.set_input_callback()
        
    def _setup_styles(self):
        """Setup custom styles"""
        style = ttk.Style()
        style.theme_use('clam')
        
        # Configure colors
        style.configure('Toolbar.TButton', font=('Segoe UI', 10))
        style.configure('Editor.TFrame', background='#252526')
        style.configure('Output.TFrame', background='#1e1e1e')
        
    def _create_menu(self):
        """Create menu bar"""
        menubar = tk.Menu(self.root)
        self.root.config(menu=menubar)
        # File menu
        file_menu = tk.Menu(menubar, tearoff=0)
        menubar.add_cascade(label="File", menu=file_menu)
        file_menu.add_command(label="New", command=self.new_file, accelerator="Ctrl+N")
        file_menu.add_command(label="Open...", command=self.open_file, accelerator="Ctrl+O")
        file_menu.add_command(label="Save", command=self.save_file, accelerator="Ctrl+S")
        file_menu.add_command(label="Save As...", command=self.save_file_as, accelerator="Ctrl+Shift+S")
        file_menu.add_separator()
        file_menu.add_command(label="Exit", command=self.root.quit)
        
        # Edit menu
        edit_menu = tk.Menu(menubar, tearoff=0)
        menubar.add_cascade(label="Edit", menu=edit_menu)
        edit_menu.add_command(label="Undo", command=self.undo, accelerator="Ctrl+Z")
        edit_menu.add_command(label="Redo", command=self.redo, accelerator="Ctrl+Y")
        edit_menu.add_separator()
        edit_menu.add_command(label="Cut", command=self.cut, accelerator="Ctrl+X")
        edit_menu.add_command(label="Copy", command=self.copy, accelerator="Ctrl+C")
        edit_menu.add_command(label="Paste", command=self.paste, accelerator="Ctrl+V")
        edit_menu.add_separator()
        edit_menu.add_command(label="Find", command=self.find, accelerator="Ctrl+F")
        edit_menu.add_command(label="Replace", command=self.replace, accelerator="Ctrl+H")
        
        # Run menu
        run_menu = tk.Menu(menubar, tearoff=0)
        menubar.add_cascade(label="Run", menu=run_menu)
        run_menu.add_command(label="Run Code", command=self.run_code, accelerator="F5")
        run_menu.add_command(label="Run in Terminal", command=self.run_in_terminal, accelerator="Ctrl+F5")
        run_menu.add_separator()
        run_menu.add_command(label="Stop", command=self.stop_execution, accelerator="F6")
        
        # Tools menu
        tools_menu = tk.Menu(menubar, tearoff=0)
        menubar.add_cascade(label="Tools", menu=tools_menu)
        tools_menu.add_command(label="Format Code", command=self.format_code, accelerator="Ctrl+Shift+F")
        tools_menu.add_command(label="Check Syntax", command=self.check_syntax)
        tools_menu.add_separator()
        tools_menu.add_command(label="Settings", command=self.open_settings)
        
        # Help menu
        help_menu = tk.Menu(menubar, tearoff=0)
        menubar.add_cascade(label="Help", menu=help_menu)
        help_menu.add_command(label="Documentation", command=self.show_documentation)
        help_menu.add_command(label="Examples", command=self.show_examples)
        help_menu.add_separator()
        help_menu.add_command(label="About", command=self.show_about)
        
        # Bind shortcuts
        self.root.bind('<Control-n>', lambda e: self.new_file())
        self.root.bind('<Control-o>', lambda e: self.open_file())
        self.root.bind('<Control-s>', lambda e: self.save_file())
        self.root.bind('<Control-S>', lambda e: self.save_file_as())
        self.root.bind('<F5>', lambda e: self.run_code())
        self.root.bind('<Control-F5>', lambda e: self.run_in_terminal())
        
    def _create_toolbar(self):
        """Create toolbar with buttons"""
        toolbar = tk.Frame(self.root, bg='#2d2d2d', height=40)
        toolbar.pack(fill=tk.X, pady=(0, 5))
        
        # Button style
        btn_style = {'bg': '#3c3c3c', 'fg': 'white', 'font': ('Segoe UI', 10),
                     'relief': tk.FLAT, 'padx': 15, 'pady': 5}
        
        # New button
        new_btn = tk.Button(toolbar, text="📄 New", command=self.new_file, **btn_style)
        new_btn.pack(side=tk.LEFT, padx=2)
        
        # Open button
        open_btn = tk.Button(toolbar, text="📂 Open", command=self.open_file, **btn_style)
        open_btn.pack(side=tk.LEFT, padx=2)
        
        # Save button
        save_btn = tk.Button(toolbar, text="💾 Save", command=self.save_file, **btn_style)
        save_btn.pack(side=tk.LEFT, padx=2)
        
        # Separator
        tk.Frame(toolbar, width=2, bg='#555').pack(side=tk.LEFT, padx=5, fill=tk.Y)
        
        # Run button
        run_btn = tk.Button(toolbar, text="▶ Run", command=self.run_code,
                           bg='#0e639c', fg='white', font=('Segoe UI', 10, 'bold'),
                           relief=tk.FLAT, padx=15, pady=5)
        run_btn.pack(side=tk.LEFT, padx=2)
        
        # Stop button
        stop_btn = tk.Button(toolbar, text="⏹ Stop", command=self.stop_execution,
                            bg='#a31515', fg='white', font=('Segoe UI', 10),
                            relief=tk.FLAT, padx=15, pady=5)
        stop_btn.pack(side=tk.LEFT, padx=2)
        
        # Separator
        tk.Frame(toolbar, width=2, bg='#555').pack(side=tk.LEFT, padx=5, fill=tk.Y)
        
        # Format button
        fmt_btn = tk.Button(toolbar, text="✨ Format", command=self.format_code, **btn_style)
        fmt_btn.pack(side=tk.LEFT, padx=2)
        
        # Separator
        tk.Frame(toolbar, width=2, bg='#555').pack(side=tk.LEFT, padx=5, fill=tk.Y)
        
        # Clear button
        clear_btn = tk.Button(toolbar, text="🗑 Clear Output", command=self.clear_output, **btn_style)
        clear_btn.pack(side=tk.LEFT, padx=2)
        
    def _create_editor_frame(self):
        """Create code editor frame"""
        editor_frame = tk.Frame(self.main_paned, bg='#1e1e1e')
        self.main_paned.add(editor_frame, weight=3)
        
        # Editor label
        label = tk.Label(editor_frame, text="Earth Code Editor", bg='#1e1e1e', fg='#cccccc',
                        font=('Segoe UI', 10, 'bold'))
        label.pack(anchor=tk.W, padx=5, pady=(5, 0))
        
        # Line numbers
        text_frame = tk.Frame(editor_frame, bg='#1e1e1e')
        text_frame.pack(fill=tk.BOTH, expand=True, padx=5, pady=5)
        
        self.line_numbers = tk.Text(text_frame, width=4, padx=3, takefocus=0, border=0,
                                    background='#252526', foreground='#858585',
                                    state='disabled', wrap='none', font=('Consolas', 11))
        self.line_numbers.pack(side=tk.LEFT, fill=tk.Y)
        
        # Main editor
        self.editor = scrolledtext.ScrolledText(text_frame, wrap=tk.NONE,
                                                 font=('Consolas', 11),
                                                 bg='#1e1e1e', fg='#d4d4d4',
                                                 insertbackground='white',
                                                 selectbackground='#264f78',
                                                 relief=tk.FLAT, borderwidth=0)
        self.editor.pack(side=tk.LEFT, fill=tk.BOTH, expand=True)
        
        # Configure tags for syntax highlighting
        self._configure_syntax_tags()
        
        # Bind events
        self.editor.bind('<KeyRelease>', self._on_editor_change)
        self.editor.bind('<MouseWheel>', self._sync_scroll)
        
        # Sample code
        self._load_sample_code()
        
    def _configure_syntax_tags(self):
        """Configure syntax highlighting tags"""
        # Keywords
        self.editor.tag_config('keyword', foreground='#569cd6')
        self.editor.tag_config('define', foreground='#c586c0')
        self.editor.tag_config('if', foreground='#c586c0')
        self.editor.tag_config('else', foreground='#c586c0')
        self.editor.tag_config('for', foreground='#c586c0')
        self.editor.tag_config('while', foreground='#c586c0')
        self.editor.tag_config('return', foreground='#c586c0')
        self.editor.tag_config('class', foreground='#c586c0')
        self.editor.tag_config('import', foreground='#c586c0')
        self.editor.tag_config('try', foreground='#c586c0')
        self.editor.tag_config('catch', foreground='#c586c0')
        
        # Literals
        self.editor.tag_config('string', foreground='#ce9178')
        self.editor.tag_config('number', foreground='#b5cea8')
        self.editor.tag_config('boolean', foreground='#569cd6')
        
        # Comments
        self.editor.tag_config('comment', foreground='#6a9955')
        
        # Operators
        self.editor.tag_config('operator', foreground='#d4d4d4')
        
        # Functions
        self.editor.tag_config('function', foreground='#dcdcaa')
        
    def _create_output_frame(self):
        """Create output console frame"""
        output_frame = tk.Frame(self.main_paned, bg='#1e1e1e')
        self.main_paned.add(output_frame, weight=2)
        
        # Output label with tabs
        tab_frame = tk.Frame(output_frame, bg='#2d2d2d')
        tab_frame.pack(fill=tk.X, padx=5, pady=(5, 0))
        
        output_tab = tk.Label(tab_frame, text="Output", bg='#2d2d2d', fg='#cccccc',
                              font=('Segoe UI', 10, 'bold'), padx=10, pady=5)
        output_tab.pack(side=tk.LEFT)
        
        # Output text area
        self.output_area = scrolledtext.ScrolledText(output_frame, wrap=tk.WORD,
                                                      font=('Consolas', 10),
                                                      bg='#1e1e1e', fg='#d4d4d4',
                                                      relief=tk.FLAT, borderwidth=0)
        self.output_area.pack(fill=tk.BOTH, expand=True, padx=5, pady=5)
        
        # Configure output tags
        self.output_area.tag_config('error', foreground='#f48771')
        self.output_area.tag_config('success', foreground='#6a9955')
        self.output_area.tag_config('info', foreground='#569cd6')
        
        # Input entry frame
        input_frame = tk.Frame(output_frame, bg='#2d2d2d')
        input_frame.pack(fill=tk.X, padx=5, pady=(0, 5))
        
        input_label = tk.Label(input_frame, text=">", bg='#2d2d2d', fg='#569cd6',
                               font=('Consolas', 10))
        input_label.pack(side=tk.LEFT, padx=(5, 0))
        
        self.input_entry = tk.Entry(input_frame, bg='#3c3c3c', fg='#d4d4d4',
                                     font=('Consolas', 10), relief=tk.FLAT)
        self.input_entry.pack(side=tk.LEFT, fill=tk.X, expand=True, padx=5)
        self.input_entry.bind('<Return>', self._on_input_enter)
        
        self.input_entry.pack_forget()
        self.input_label = input_label
        
    def _create_status_bar(self):
        """Create status bar"""
        self.status_bar = tk.Frame(self.root, bg='#007acc', height=25)
        self.status_bar.pack(fill=tk.X, side=tk.BOTTOM)
        
        self.status_label = tk.Label(self.status_bar, text="Ready", bg='#007acc', fg='white',
                                     font=('Segoe UI', 9), anchor=tk.W)
        self.status_label.pack(side=tk.LEFT, padx=10)
        
        self.cursor_label = tk.Label(self.status_bar, text="Ln 1, Col 1", bg='#007acc', fg='white',
                                     font=('Segoe UI', 9))
        self.cursor_label.pack(side=tk.RIGHT, padx=10)
        # Label to show compiler URL (clickable)
        self.compiler_url_label = tk.Label(self.status_bar, text="", bg='#007acc', fg='white',
                          font=('Segoe UI', 9), cursor='')
        self.compiler_url_label.pack(side=tk.RIGHT, padx=10)
        
        self.update_cursor_position()

    def set_compiler_url(self, url: str):
        """Set a compiler URL and display it in the status bar.

        The URL becomes clickable and will open in the default browser.
        """
        self.compiler_url = url
        if hasattr(self, 'compiler_url_label') and self.compiler_url_label:
            try:
                # Normalize URL: ensure scheme exists
                parsed = urlparse(url)
                if not parsed.scheme:
                    url = 'http://' + url
                    parsed = urlparse(url)

                if not parsed.netloc:
                    raise ValueError('Invalid URL')

                normalized = urlunparse(parsed)
                self.compiler_url = normalized
                self.compiler_url_label.config(text=normalized, cursor='hand2')
                # Bind click to open in default browser
                self.compiler_url_label.bind('<Button-1>', lambda e, u=normalized: webbrowser.open(u))
            except Exception:
                raise

    # Embedded webview support removed; URLs open in external browser via webbrowser.open

    def _load_sample_code(self):
        """Load sample Earth code"""
        sample_code = '''print("Welcome to Earth")
input_val = input("Enter your name: ")
print("Hello", input_val)

if "-" in input_val:
    print("Hello boss")
else:
    print("Sorry, you are not boss")

# Loop example
for i in range(5):
    print("Count:", i)
else:
    print("Loop finished")

# Function definition
define addition(a, b):
    return a + b

define factorial(n):
    if n <= 1:
        return 1
    return n * factorial(n - 1)

# Call functions
print("Addition of 2 and 3 is", addition(2, 3))
print("Factorial of 5 is", factorial(5))

# List operations
numbers = [1, 2, 3, 4, 5]
print("Sum of numbers is", sum(numbers))
print("Max number is", max(numbers))

# Class example
define class Person:
    define __init__(self, name, age):
        self.name = name
        self.age = age
    
    define greet(self):
        return "Hello, I'm " + self.name

# Create instance
person = Person("Alice", 25)
print(person.greet())
'''
        self.editor.insert('1.0', sample_code)
        
    def _on_editor_change(self, event=None):
        """Handle editor changes"""
        self.update_cursor_position()
        self._highlight_syntax()
        
    def _highlight_syntax(self):
        """Apply syntax highlighting"""
        # Clear existing tags
        for tag in self.editor.tag_names():
            if tag not in ('sel', 'tk_focus', 'tk_focusNext', 'tk_focusPrev'):
                try:
                    self.editor.tag_remove(tag, '1.0', 'end')
                except Exception:
                    pass
                
        # Get all text
        text = self.editor.get('1.0', 'end-1c')
        
        # Define patterns
        patterns = [
            ('keyword', r'\b(and|or|not|in|is|None|True|False)\b'),
            ('define', r'\bdefine\b'),
            ('if', r'\bif\b'),
            ('else', r'\belse\b'),
            ('for', r'\bfor\b'),
            ('while', r'\bwhile\b'),
            ('return', r'\breturn\b'),
            ('class', r'\bclass\b'),
            ('import', r'\bimport\b'),
            ('try', r'\btry\b'),
            ('catch', r'\bcatch\b'),
            ('comment', r'#.*$'),
            ('string', r'"[^"\\]*(?:\\.[^"\\]*)*"'),
            ('string', r"'[^'\\]*(?:\\.[^'\\]*)*'"),
            ('number', r'\b\d+(?:\.\d+)?\b'),
            ('boolean', r'\b(True|False)\b'),
            ('function', r'\b[a-zA-Z_][a-zA-Z0-9_]*(?=\()'),
        ]
        
        # Apply patterns
        for tag, pattern in patterns:
            start = '1.0'
            while True:
                pos = self.editor.search(pattern, start, stopindex='end', regexp=True)
                if not pos:
                    break
                end = f"{pos}+{len(self.editor.get(pos, f'{pos}+1c'))}c"
                self.editor.tag_add(tag, pos, end)
                start = end
                
    def _sync_scroll(self, event=None):
        """Sync line numbers scroll with editor"""
        self.line_numbers.yview_moveto(self.editor.yview()[0])
        
    def update_cursor_position(self):
        """Update cursor position in status bar"""
        cursor_pos = self.editor.index(tk.INSERT)
        line, col = cursor_pos.split('.')
        self.cursor_label.config(text=f"Ln {line}, Col {int(col) + 1}")
        
    def set_input_callback(self):
        """Set callback for input prompts"""
        def get_input():
            self.input_entry.pack(side=tk.LEFT, fill=tk.X, expand=True, padx=5)
            self.input_entry.focus()
            self.input_entry.wait_variable(self.input_var)
            return self.input_entry.get()
            
        self.input_var = tk.StringVar()
        self.interpreter.input_callback = get_input
        
    def _on_input_enter(self, event=None):
        """Handle input entry"""
        self.input_var.set(self.input_entry.get())
        self.input_entry.delete(0, tk.END)
        self.input_entry.pack_forget()
        
    def run_code(self):
        """Execute the Earth code"""
        code = self.editor.get('1.0', 'end-1c')
        if not code.strip():
            messagebox.showwarning("Warning", "No code to execute")
            return
            
        # Clear output
        self.clear_output()
        
        # Run in separate thread to avoid freezing GUI
        def run():
            try:
                from earth_compiler import translate_sl, get_base_namespace
                from pathlib import Path
                py_code = translate_sl(code)
                buffer = io.StringIO()
                old_stdout = sys.stdout
                sys.stdout = buffer
                
                # Get the base namespace equipped with our dynamic SL package loader
                namespace = get_base_namespace(Path("script.sl"))
                try:
                    exec(py_code, namespace)
                finally:
                    sys.stdout = old_stdout
                    
                output = buffer.getvalue()
                if output:
                    self.output_area.insert(tk.END, output, 'info')
                self.status_label.config(text="Execution completed successfully")
                
            except SyntaxError as e:
                self.output_area.insert(tk.END, f"Syntax Error: {e}\n", 'error')
                self.status_label.config(text="Syntax error")
            except Exception as e:
                self.output_area.insert(tk.END, f"Error: {e}\n{traceback.format_exc()}\n", 'error')
                self.status_label.config(text="Execution failed")
                
        threading.Thread(target=run, daemon=True).start()
        
    def run_in_terminal(self):
        """Run code in external terminal"""
        messagebox.showinfo("Info", "Terminal execution will be available in future versions")
        
    def stop_execution(self):
        """Stop current execution"""
        # This would require more complex interrupt handling
        messagebox.showinfo("Info", "Stop execution will be available in future versions")
        
    def check_syntax(self):
        """Check syntax without executing"""
        code = self.editor.get('1.0', 'end-1c')
        if not code.strip():
            messagebox.showinfo("Info", "No code to check")
            return
            
        try:
            lexer = EarthLexer(code)
            tokens = lexer.tokenize()
            parser = EarthParser(tokens)
            parser.parse()
            messagebox.showinfo("Success", "Syntax is valid!")
            self.status_label.config(text="Syntax check passed")
        except SyntaxError as e:
            messagebox.showerror("Syntax Error", str(e))
            self.status_label.config(text="Syntax check failed")
            
    def format_code(self):
        """Format Earth code"""
        # Simple formatting - could be enhanced
        code = self.editor.get('1.0', 'end-1c')
        lines = code.split('\n')
        formatted = []
        indent_level = 0
        
        for line in lines:
            stripped = line.strip()
            if not stripped:
                formatted.append('')
                continue
                
            # Decrease indent for closing blocks
            if stripped.endswith(':'):
                formatted.append('    ' * indent_level + stripped)
                indent_level += 1
            elif stripped in ('else:', 'catch:', 'finally:'):
                indent_level -= 1
                formatted.append('    ' * indent_level + stripped)
                indent_level += 1
            elif stripped.startswith('return') or stripped.startswith('print') or stripped.startswith('define'):
                formatted.append('    ' * indent_level + stripped)
            else:
                formatted.append('    ' * indent_level + stripped)
                
        formatted_code = '\n'.join(formatted)
        self.editor.delete('1.0', 'end')
        self.editor.insert('1.0', formatted_code)
        self.status_label.config(text="Code formatted")
        
    def clear_output(self):
        """Clear output console"""
        self.output_area.delete('1.0', 'end')
        
    def new_file(self):
        """Create new file"""
        if messagebox.askyesno("New File", "Clear current editor?"):
            self.editor.delete('1.0', 'end')
            self.current_file = None
            self.root.title("Earth Language Compiler - New File")
            self.status_label.config(text="New file created")
            
    def open_file(self):
        """Open Earth file"""
        file_path = filedialog.askopenfilename(
            title="Open Earth File",
            filetypes=[("Earth Files", "*.earth"), ("All Files", "*.*")]
        )
        if file_path:
            try:
                with open(file_path, 'r', encoding='utf-8') as f:
                    code = f.read()
                self.editor.delete('1.0', 'end')
                self.editor.insert('1.0', code)
                self.current_file = file_path
                self.root.title(f"Earth Language Compiler - {file_path}")
                self.status_label.config(text=f"Opened: {file_path}")
            except Exception as e:
                messagebox.showerror("Error", f"Failed to open file: {e}")
                
    def save_file(self):
        """Save current file"""
        if self.current_file:
            try:
                code = self.editor.get('1.0', 'end-1c')
                with open(self.current_file, 'w', encoding='utf-8') as f:
                    f.write(code)
                self.status_label.config(text=f"Saved: {self.current_file}")
            except Exception as e:
                messagebox.showerror("Error", f"Failed to save file: {e}")
        else:
            self.save_file_as()
            
    def save_file_as(self):
        """Save as new file"""
        file_path = filedialog.asksaveasfilename(
            title="Save Earth File",
            defaultextension=".earth",
            filetypes=[("Earth Files", "*.earth"), ("All Files", "*.*")]
        )
        if file_path:
            self.current_file = file_path
            self.save_file()
            self.root.title(f"Earth Language Compiler - {file_path}")
            
    def undo(self):
        """Undo operation"""
        try:
            self.editor.edit_undo()
        except:
            pass
            
    def redo(self):
        """Redo operation"""
        try:
            self.editor.edit_redo()
        except:
            pass
            
    def cut(self):
        """Cut selected text"""
        self.editor.event_generate("<<Cut>>")
        
    def copy(self):
        """Copy selected text"""
        self.editor.event_generate("<<Copy>>")
        
    def paste(self):
        """Paste text"""
        self.editor.event_generate("<<Paste>>")
        
    def find(self):
        """Find dialog"""
        find_window = tk.Toplevel(self.root)
        find_window.title("Find")
        find_window.geometry("300x100")
        find_window.configure(bg='#2d2d2d')
        
        tk.Label(find_window, text="Find:", bg='#2d2d2d', fg='white').pack(pady=5)
        find_entry = tk.Entry(find_window, bg='#3c3c3c', fg='white', width=30)
        find_entry.pack(pady=5)
        
        def do_find():
            search_text = find_entry.get()
            if search_text:
                start = self.editor.search(search_text, '1.0', stopindex='end')
                if start:
                    end = f"{start}+{len(search_text)}c"
                    self.editor.tag_remove('sel', '1.0', 'end')
                    self.editor.tag_add('sel', start, end)
                    self.editor.see(start)
                else:
                    messagebox.showinfo("Find", "Text not found")
                    
        tk.Button(find_window, text="Find", command=do_find,
                 bg='#0e639c', fg='white').pack(pady=5)
                 
    def replace(self):
        """Replace dialog"""
        messagebox.showinfo("Info", "Replace functionality will be available in future versions")
        
    def open_settings(self):
        """Open settings dialog"""
        settings_win = tk.Toplevel(self.root)
        settings_win.title("Settings")
        settings_win.geometry("400x150")
        settings_win.configure(bg='#1e1e1e')

        tk.Label(settings_win, text="Compiler URL:", bg='#1e1e1e', fg='white').pack(anchor=tk.W, padx=10, pady=(10, 0))
        url_var = tk.StringVar(value=self.compiler_url or "")
        url_entry = tk.Entry(settings_win, textvariable=url_var, width=60, bg='#3c3c3c', fg='white')
        url_entry.pack(padx=10, pady=5)

        def save_settings():
            url = url_var.get().strip()
            if url:
                try:
                    self.set_compiler_url(url)
                    self.status_label.config(text=f"Compiler URL set")
                except Exception as e:
                    messagebox.showerror("Error", f"Failed to set compiler URL: {e}")
            settings_win.destroy()

        btn_frame = tk.Frame(settings_win, bg='#1e1e1e')
        btn_frame.pack(fill=tk.X, pady=10)
        tk.Button(btn_frame, text="Save", command=save_settings, bg='#0e639c', fg='white').pack(side=tk.RIGHT, padx=10)
        tk.Button(btn_frame, text="Cancel", command=settings_win.destroy, bg='#3c3c3c', fg='white').pack(side=tk.RIGHT)
        
    def show_documentation(self):
        """Show Earth language documentation"""
        doc_window = tk.Toplevel(self.root)
        doc_window.title("Earth Language Documentation")
        doc_window.geometry("800x600")
        doc_window.configure(bg='#1e1e1e')
        
        doc_text = scrolledtext.ScrolledText(doc_window, wrap=tk.WORD,
                                              font=('Segoe UI', 10),
                                              bg='#1e1e1e', fg='#d4d4d4')
        doc_text.pack(fill=tk.BOTH, expand=True, padx=10, pady=10)
        
        documentation = """
EARTH LANGUAGE DOCUMENTATION
============================

Earth is a beginner-friendly programming language designed for readability.

KEY FEATURES
------------

1. Simple Syntax: Uses plain English keywords
2. Python Interoperability: Can import Python modules
3. Built-in Data Structures: Lists, Dictionaries, Sets, Tuples
4. Object-Oriented: Classes with inheritance
5. Functional: Functions as first-class citizens

BASIC SYNTAX
------------

Printing:
    print("Hello, World!")
    print("Value is", 42)

Variables:
    name = "Earth"
    count = 10
    pi = 3.14159

Input:
    user_input = input("Enter value: ")

Conditionals:
    if condition:
        print("True")
    else:
        print("False")

Loops:
    for i in range(10):
        print(i)
    else:
        print("Loop finished")
    
    while condition:
        print("Running")

Functions:
    define add(a, b):
        return a + b

Classes:
    define class Person:
        define __init__(self, name):
            self.name = name
        
        define greet(self):
            return "Hello, " + self.name

Built-in Functions:
    len(list) - Get list length
    range(n) - Generate numbers 0 to n-1
    sum(list) - Sum all elements
    max(list) - Find maximum value
    min(list) - Find minimum value
    sorted(list) - Return sorted list

String Operations:
    "Hello" + "World" - Concatenation
    "text" * 3 - Repetition
    "find" in text - Membership test

List Operations:
    [1, 2, 3] + [4, 5] - Concatenation
    [1, 2, 3] * 2 - Repetition
    element in list - Membership

Math Functions:
    sqrt(x) - Square root
    sin(x), cos(x), tan(x) - Trigonometry
    pi - Pi constant

BEST PRACTICES
--------------

1. Use meaningful variable names
2. Write comments with # for complex logic
3. Keep functions short and focused
4. Use consistent indentation (4 spaces)
5. Test edge cases

EXAMPLES
--------

Fibonacci sequence:
    define fibonacci(n):
        if n <= 1:
            return n
        return fibonacci(n-1) + fibonacci(n-2)

Prime check:
    define is_prime(n):
        if n < 2:
            return False
        for i in range(2, n):
            if n % i == 0:
                return False
        return True

Factorial:
    define factorial(n):
        if n <= 1:
            return 1
        return n * factorial(n-1)

Binary search:
    define binary_search(arr, target):
        left = 0
        right = len(arr) - 1
        while left <= right:
            mid = (left + right) // 2
            if arr[mid] == target:
                return mid
            elif arr[mid] < target:
                left = mid + 1
            else:
                right = mid - 1
        return -1

MORE INFORMATION
---------------

Earth is designed to be intuitive for beginners while powerful enough for real applications.
        """
        
        doc_text.insert('1.0', documentation)
        doc_text.config(state='disabled')
        
    def show_examples(self):
        """Show example Earth programs"""
        examples = {
            "Hello World": '''print("Hello, World!")
print("Welcome to Earth!")''',
            
            "Fibonacci": '''define fibonacci(n):
    if n <= 1:
        return n
    return fibonacci(n - 1) + fibonacci(n - 2)

for i in range(10):
    print("fib(" + str(i) + ") =", fibonacci(i))''',
            
            "Prime Numbers": '''define is_prime(n):
    if n < 2:
        return False
    for i in range(2, n):
        if n % i == 0:
            return False
    return True

print("Prime numbers up to 50:")
for n in range(2, 51):
    if is_prime(n):
        print(n, end=" ")
print()''',
            
            "Bubble Sort": '''define bubble_sort(arr):
    n = len(arr)
    for i in range(n):
        for j in range(n - i - 1):
            if arr[j] > arr[j + 1]:
                arr[j], arr[j + 1] = arr[j + 1], arr[j]
    return arr

numbers = [64, 34, 25, 12, 22, 11, 90]
print("Original:", numbers)
print("Sorted:", bubble_sort(numbers))''',
            
            "Class Example": '''define class Rectangle:
    define __init__(self, width, height):
        self.width = width
        self.height = height
    
    define area(self):
        return self.width * self.height
    
    define perimeter(self):
        return 2 * (self.width + self.height)

rect = Rectangle(5, 3)
print("Area:", rect.area())
print("Perimeter:", rect.perimeter())''',
            
            "List Comprehension": '''define square(x):
    return x * x

numbers = [1, 2, 3, 4, 5]
squares = [square(n) for n in numbers]
even = [n for n in numbers if n % 2 == 0]

print("Numbers:", numbers)
print("Squares:", squares)
print("Even numbers:", even)'''
        }
        
        example_window = tk.Toplevel(self.root)
        example_window.title("Earth Examples")
        example_window.geometry("900x600")
        example_window.configure(bg='#1e1e1e')
        
        # Left panel - example list
        left_panel = tk.Frame(example_window, bg='#252526', width=200)
        left_panel.pack(side=tk.LEFT, fill=tk.Y)
        
        tk.Label(left_panel, text="Examples", bg='#252526', fg='white',
                font=('Segoe UI', 12, 'bold')).pack(pady=10)
        
        listbox = tk.Listbox(left_panel, bg='#3c3c3c', fg='#d4d4d4',
                            font=('Consolas', 10), selectbackground='#0e639c')
        listbox.pack(fill=tk.BOTH, expand=True, padx=10, pady=5)
        
        for name in examples.keys():
            listbox.insert(tk.END, name)
            
        # Right panel - code display
        right_panel = tk.Frame(example_window, bg='#1e1e1e')
        right_panel.pack(side=tk.RIGHT, fill=tk.BOTH, expand=True)
        
        code_display = scrolledtext.ScrolledText(right_panel, wrap=tk.WORD,
                                                  font=('Consolas', 11),
                                                  bg='#1e1e1e', fg='#d4d4d4')
        code_display.pack(fill=tk.BOTH, expand=True, padx=10, pady=10)
        
        def show_example(event):
            selection = listbox.curselection()
            if selection:
                name = listbox.get(selection[0])
                code_display.delete('1.0', 'end')
                code_display.insert('1.0', examples[name])
                
        listbox.bind('<<ListboxSelect>>', show_example)
        listbox.selection_set(0)
        show_example(None)
        
        # Button to load into editor
        def load_to_editor():
            selection = listbox.curselection()
            if selection:
                name = listbox.get(selection[0])
                self.editor.delete('1.0', 'end')
                self.editor.insert('1.0', examples[name])
                example_window.destroy()
                self.status_label.config(text=f"Loaded example: {name}")
                
        load_btn = tk.Button(example_window, text="Load into Editor", command=load_to_editor,
                            bg='#0e639c', fg='white', font=('Segoe UI', 10))
        load_btn.pack(side=tk.BOTTOM, pady=10)
        
    def show_about(self):
        """Show about dialog"""
        about_text = """Earth Language Compiler
Version 1.0.0

A beginner-friendly programming language compiler
with GUI interface.

Earth features:
• Simple, readable syntax
• Python interoperability
• Built-in data structures
• Functions and classes
• Rich standard library

Created to make programming accessible to everyone.

© 2024 Earth Language Project"""
        
        messagebox.showinfo("About Earth Compiler", about_text)


# ============================================================
# MAIN ENTRY POINT
# ============================================================

def main():
    root = tk.Tk()
    app = EarthCompilerGUI(root)
    root.mainloop()


if __name__ == "__main__":
    main()