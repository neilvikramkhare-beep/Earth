// Earth Language Frontend Development Package
// File: frontend.sl

import html
import css

define create_component(name, style, content):
    component_style = css.rule(f".{name}", style)
    component_html = html.tag("div", content, class_=name)
    return component_style + "\n" + component_html

define render_app(root_component):
    print("Earth Frontend: Rendering app to DOM...")
    return html.document("Earth App", root_component)
