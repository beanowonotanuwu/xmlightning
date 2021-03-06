# xmlightning

*xmlightning is a simple, [Flask](https://github.com/pallets/flask)-like way of creating XML parsers*

## Installation
#
- To install xmlightning through pip

        pip install xmlightning

## Getting Started
#
For a basic hello world, take the following two files

- hello_world.xml

        <root>
            <foo>Hello World</foo>
        </root>
 - hello_world.py

        from xmlightning import Lightning


        parser = Lightning()

        @parser.route("./foo")
        def hello_world(element):
            print("hello_world")

        parser.parse("test.xml")

## Breakdown
#
After the Lightning class gets imported in your project, to use it you must instantiate it.

After the Lightning class was instantiated, the example uses the decorator, "route".

### Route Decorator
> The route decorator takes in one argument, path, which is a string.
Path refers to any valid XPATH string.

> _Note that the route decorator requires the function it is used on to take in one argument: element._

> The type of element can be imported through the following

- Through xml

        from xml.etree.ElementTree import Element

- Or through xmlightning

        from xmlightning import Element

---
Next, the hello_world.xml file is parsed. 
Whenever the parser encounters a path that matches a route, the function of that route is executed.

Finally, the string from the function is printed to the screen

        hello_world
