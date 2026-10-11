// Earth Language CSS Package
// File: css.sl

define rule(selector, properties):
    css = selector + " {\n";
    for k, v in properties.items():
        # Replace python underscores with css dashes
        css_k = str(k).replace('_', '-');
        css += f"    {css_k}: {v};\n";
    css += "}";
    return css;

define stylesheet(rules_list):
    return "\n\n".join(rules_list);
