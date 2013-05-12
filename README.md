# HTML6

![HTML6](https://raw.github.com/OscarGodson/HTML6/master/malay.jpg)

## The Spec That Brings Us Freedom

### Section 1 - Introduction

HTML5 was a great leap forward for web developers. It gave us all kinds of hip new tags like `<header>`, `<nav>` and `<footer>`. It also gave us slick new JavaScript APIs like drag and drop, localStorage, and geolocation. Still, however, there is a void that HTML5 has yet to fill and that void is truly semantic markup.

Imagine being able to mark something up the way you want to mark it up. Imagine changing `<div id="wrapper">` to `<wrapper>` or a better example, making a calendar like:

```xml
<calendar>
  <month name="January">
    <day>1</day>
    <day>2</day>
    <day>3</day>
    <!-- ...and so on -->
  </month>
</calendar>
```

Even better yet, how about finally adding support for new types of media by simply changing the media type rather than having to come up with whole new tags for it like `<img>`, `<embed>`, `<video>`, `<audio>`, and so on? For example, wouldn't it be nice to just simply do: `<html:media src="my-audio-file.aac" type="aac">` and let the browser deal with how to render it?

The web is moving towards a giant app store and we need to embrace it. The markup we use shouldn't work against us, it should work for us. This spec is to do just that. To finally break free of fatuous rules and standards and to give us, developers, total freedom to code as we please bringing the web a more semantic, clean, and human readable markup.

Now, without further adieu, let me introduce you to HTML6.

### Section 2 - The Concept

HTML6 is conceptually HTML with XML like namespaces. If you don't know XML, or don't know what XML namespaces are they're basically a way to allow you to use the same tag without it conflicting with a different tag. You've probably actually seen one before in the XHTML DOCTYPE: `xmlns:xhtml="http://www.w3.org/1999/xhtml"`

In HTML6 we take advantage of this ingenious concept by giving us freedom to use whatever tag we want by the W3C reserving namespaces and not tags. The W3C would basically reserve the right to all namespaces, and each namespace they reserve will trigger a different HTML API.

So, what does this look like? Below is an example of a full HTML6 document. We'll go over each tag and attributes in the API section.

```xml
<!DOCTYPE html>
<html:html>
    <html:head>
        <html:title>HTML6 Sample</html:title>
        <html:meta type="title" value="Page Title">
        <html:meta type="description" value="This is an example of HTML with namespaces">
        <html:link src="css/main.css" title="Main Styles" type="text/css">
        <html:link src="js/main.js" title="Main Script" type="text/javascript">
    </html:head>
    <html:body>
        <header>
            <logo>
                <html:media type="image" src="images/logo.png">
            </logo>
            <nav>
               <html:a href="/cats">Cats</a>
               <html:a href="/dogs">Dogs</a>
               <html:a href="/rain">Rain</a>
            </nav>
        </header>
        <content>
            <article>
                <h1>This is my main article head</h1>
                <h2>This is my sub head</h2>
                <p>[...]</p>
                <p>[...]</p>
            </article>
            <article>
                <h1>A cool video!</h1>
                <h2>Pay attetion to the media elements</h2>
                <p>[...]</p>
                <html:media type="video" src="vids/funny-cat.mp4" autostart controls>
                <p>Man, that was a stupid cat.</p>
            </article>
        </content>
        <footer>
            <copyright>This site is &copy; to Oscar Godson 2009</copyright>
        </footer>
    </html:body>
</html:html>
```

As you'll see, there are some weird `<html:x>` tags throughout this sample. Those are the namespaced elements that belong to the W3C and HTML6 spec. These elements trigger browser events. For example, the `<html:media type="image">` element will make an image appear or, the `<html:title>` element makes the title bar of the browser change and so on.

All those other elements are just for you. None of those elements mean anything to the browser. They're simply hooks for CSS and JS and to make your code more semantic. The HTML elements you see in there like `<p>` or the `<h1>` tags are just because I like using those as ways to markup paragraphs or the most important header, but I could have used `<paragraph>`, `<text>`, or `<helloworldanythingiwant>`. 

It's whatever makes sense to you and your application.

### Section 3 - The APIs

#### Section 3A - HTML API

All of the following tags in this API have the namespace `html` like: `<html:title>`

##### `<html:html>`

This begins a HTML document. Equivelent to the current `<html>` tag.

_Example:_

```xml
<!DOCTYPE html>
<html:html>
  <!-- rest of HTML would go here -->
</html:html>
```
##### `<html:head>`

This begins an HTML's head. Equivelent to the current `<html>` tag. The tag contains data that isn't actually displayed (aside from the `<html:title>` which is displayed in the browser's windows). Rather, it's purpose is to get data and scripts that affect the display of the content in the `<html:body>`. These scripts and other sources include things like JavaScript, CSS, RSS feeds, etc.

_Example:_

```xml
<!DOCTYPE html>
<html:html>
  <html:head>
    <!-- Head content here, like the <html:title> tag -->
  </html:head>
</html:html>
```

##### `<html:title>`

This is the title of the HTML document. Equivalent to the current `<title>` tag. Browsers will use this for the tab bar, favorites, etc. and search engines will use this as the title of their links

_Example:_

```xml
<!DOCTYPE html>
<html:html>
  <html:head>
    <html:title>HTML6 Spec Version 0.1</html:title>
  </html:head>
</html:html>
```

##### `<html:meta>`

This is a bit different then the current HTML version. Meta data in HTML6 can be anything. Unlike HTML now, there are no required or non-standard meta types. It's used to store content for you as a developer, or for other sites as a way to grab information such as a page description.

_Example:_

```xml
<!DOCTYPE html>
<html:html>
  <html:head>
    <html:title>HTML6 Spec Version 0.1</html:title>
    <html:meta type="description" value="This is an example of HTML with namespaces">
  </html:head>
</html:html>
```

##### `<html:link>`

This links external documents and scripts such as CSS, JavaScript, RSS, favicons, etc. to the current document. Equivalent to the current `<link>` tag. This tag takes the following attributes:

- `charset`: The character encoding such as "UTF-8".
- `href`: The link to the source file.
- `media`: The type of device the item should run on, for example, "mobile" or "tablet".
- `type`: The MIME type of the document, for example, `text/javascript`.

_Example:_

```xml
<!DOCTYPE html>
<html:html>
  <html:head>
    <html:title>HTML6 Spec Version 0.1</html:title>
    <html:link src="js/main.js" title="Main Script" type="text/javascript">
  </html:head>
</html:html>
```

##### `<html:body>`

This is the body of the HTML document. Equivalent to the current `<body>` tag. This is where you'd place most of the stuff that would be visible to the users like text, media, and so on.

_Example:_

```xml
<!DOCTYPE html>
<html:html>
  <html:head>
    <html:title>HTML6 Spec Version 0.1</html:title>
  </html:head>
  <html:body>
    <!-- Your web page's content would go here -->
  </html:body>
</html:html>
```

##### `<html:a>`

This tag represents either an anchor on the page, or a link to another web page. Equivalent to the current `<a>` tag. The `<html:a>` tag takes one required attribute which is the `href` which directs the anchor or link where to go. For an anchor you'd use the syntax `#id-of-element-to-link-to` and for a link to another web page you'd simply insert the link like `http://google.com`.

Attributes available to the `<a>` tag are:

- `href`
- `name`
- `target` (can be `blank`, `parent`, `top` or `self`)

_Example:_

```xml
<!DOCTYPE html>
<html:html>
  <html:head>
    <html:title>HTML6 Spec Version 0.1</html:title>
  </html:head>
  <html:body>
    <html:a href="http://google.com">Go to google.com!</html:a>
  </html:body>
</html:html>
```

##### `<html:button>`

Similar to `<button>` or `<input type="button">` in HTML<=5, the `<html:button>` tag allows you to create a button for user interaction on a page.

Attributes available to the `<html:button>` tag are:

- `disabled`

```xml
<!DOCTYPE html>
<html:html>
  <html:head>
    <html:title>HTML6 Spec Version 0.1</html:title>
  </html:head>
  <html:body>
    <html:button>Push me!</html:button>
  </html:body>
</html:html>
```

##### `<html:media>`

This tag encapsulates what we now have for media which are tags like `<img>`, `<video>`, `<audio>`, `<embed>`, and so on. Instead of a tag for each file type, the browser will just know how to run it by the `type` attribute, or will make a guess based on the file extension, or lastly, by the MIME type.

_Example:_

```xml
<!DOCTYPE html>
<html:html>
  <html:head>
    <html:title>HTML6 Spec Version 0.1</html:title>
  </html:head>
  <html:body>
    <!-- Image -->
    <html:media src="images/logo.jpg" type="image">
    <!-- Video, shows you don't "need" a type -->
    <html:media src="videos/cute-cat.mov">
    <!-- Some made up format, browser will ignore if it doesn't know it -->
    <html:media src="misc/example.abc" type="abc">
  </html:body>
</html:html>
```

#### Section 3B - HTML Forms API

HTML Forms are separate from the HTML API to allow development on forms to not have to slow down for the entire HTML spec. Forms are constantly evolving with Sliders, color pickers, date and time pickers, progress bars and more. Forms really are sort of their own "thing" in HTML, so in HTML6 we've broken them into their own API.

##### `<form:form>`

This tag creates a new form. Has two attributes, `method` and `action`. As with current HTML forms, method can be `POST` or `GET` (they can be lowercase too) and will send the form with that as the HTTP header. More details on GET and POST can be found at W3.org. The `action` attribute tells the form where to send the data. By default the "method" is set to GET and the "action" is the current page.

_Example:_

```xml
<!DOCTYPE html>
<html:html>
  <html:head>
    <html:title>HTML6 Spec Version 0.1</html:title>
  </html:head>
  <html:body>
    <form:form method="post" action="/sendmail">
      <!-- Form inputs and stuff go here -->
    </form:form>    
  </html:body>
</html:html>
```

##### `<form:input>`

This tag creates a new form input. Any type of form input that you can enter text into would be an input. In HTML currently this includes everything from a plain old text input to a `<textarea>` and would also include HTML5 style for inputs like `email` and `url`. The full list of possible input types are:

- `text`
- `email`
- `url`
- `tel`
- `search`
- `number`
- `datetime`
- `date`
- `month`
- `week`
- `time`
- `datetime-local`
- `textarea`
- `password`
- `file` - (`multiple`)

The possible attributes on an input are:

- `name`
- `disabled`
- `readonly`
- `placeholder`
- `autofocus`
- `required`
- `novalidate`

The following are attributes that will work on any input except file inputs:

- `maxlength`
- `autocomplete`
- `pattern`
- `spellcheck`
- `match` - This is new to HTML6, give it a name of a field you want it to require a match on.

_Example:_

```xml
<!DOCTYPE html>
<html:html>
  <html:head>
    <html:title>HTML6 Spec Version 0.1</html:title>
  </html:head>
  <html:body>
    <form:form method="post" action="/sendmail">
      <!-- Simple input (defaults to text) -->
      <form:input>
      <!--  A new HTML6 match example -->
      <form:input type="password" name="user_password">
      <form:input type="password" match="user_password">
      <!-- Advanced example -->
      <form:input type="email" placeholder="user@site.com" autofocus required>
    </form:form>    
  </html:body>
</html:html>
```

##### `<form:select>`

The `<form:select>` tag lets a user select from options rather than input anything. For example an HTML<=5 `<select>` would be close to the same. Some others would be a calendar, color picker, and range because these are predefined values in which you choose from.

The possible input types follow along with attributes that are specific to it:

- `select` - (`multiple`)
- `color`
- `calendar` - (`range`)
- `meter` - (`range`, `step`)

Attributes that work for all select types are:

- `name`
- `readonly`
- `disabled`
- `required`
- `autofocus`

_Example:_

```xml
<!DOCTYPE html>
<html:html>
  <html:head>
    <html:title>HTML6 Spec Version 0.1</html:title>
  </html:head>
  <html:body>
    <form:form method="post" action="/scheduler">
      <!-- Normal select -->
      <html:select type="select" name="favorite_color">
      <!-- Calendar example -->
      <html:select type="calendar" name="the_calendar" range="10/10/10-10/10/11">
    </form:form>    
  </html:body>
</html:html>
```

##### `<form:status>`

The `<form:status>` tag allows you to give feedback, or a "status" update to your users. Useful for an upload progress bar or steps in a multi-page form, for example. These are similar to the `<progress>` and `<meter>` elements in HTML5.

- `progress`
- `meter`

Attributes that work for all status types are:

- `min`
- `max`
- `value`

_Example:_

```xml
<!DOCTYPE html>
<html:html>
  <html:head>
    <html:title>HTML6 Spec Version 0.1</html:title>
  </html:head>
  <html:body>
    <form:form method="post" action="/upload">
      <!-- Example showing "steps" in a form -->
      <form:status type="meter" min="1" max="3" value="2">
      <message>You're currently on step 2 of 3</message>
      <!-- Example showing an upload progress bar -->
      <form:status type="progress" max="100" value="25">
    </form:form>    
  </html:body>
</html:html>
```

##### `<form:label>`

The `<form:label>` tag allows you to label inputs for the user. It links text to an input and when click will focus on the connected input. It matches the label's `for` attribute to the `id` of any form element.

Attributes that work for the `<form:label>` tag are:

- `for`

_Example:_

```xml
<!DOCTYPE html>
<html:html>
  <html:head>
    <html:title>HTML6 Spec Version 0.1</html:title>
  </html:head>
  <html:body>
    <form:form method="post" action="/login">
      <form:label for="username">Username</form:label>
      <form:input id="username" name="username">
      <form:label for="password">Password</form:label>
      <form:input id="password" name="password" type="password">
    </form:form>    
  </html:body>
</html:html>
```

##### `<form:submit>`

Just like `<input type="submit">` in HTML<=5, `<form:submit>` will create a button which submits your form. If a submit button is present in a form, pressing enter while focused inside of a form will submit it.

Attributes that work for the `<form:submit>` tag are:

- `name`
- `value`

_Example:_

```xml
<!DOCTYPE html>
<html:html>
  <html:head>
    <html:title>HTML6 Spec Version 0.1</html:title>
  </html:head>
  <html:body>
    <form:form method="post" action="/login">
      <form:label>Login</form:label>
      <form:input name="username">
      <form:input name="password" type="password">
      <form:submit name="submit" value="submit">
    </form:form>    
  </html:body>
</html:html>
```


### Section 4 - Tag types

In HTML6, like in all previous HTML versions, there are two types of tags: single tags and double tags. Single tags can't have any text content, they only have attributes. This is an example of single tag (both elements are interpreted the same way):
```xml
<html:meta type="author" content="m93a">
<html:meta type="author" content="m93a" />
```

Unlike the double tag, the single tag doesn't need to be closed. Double tags usually have some text content so they are made of an opening and closing tag. If it has no text content, it can be shortened to the self-closing single variant. Examples:
```xml
<html:link href="./a.html">Text content</html:link>

<!-- This shortand... -->
<foo class="bar" />
<!-- ...means in fact this: -->
<foo class="bar"></foo>
```


### Section 5 - Using HTML6 Now

Unfortunately you can't but I'm hard at work on a polyfill that will transform your HTML6 document into a normal HTML document with JS. There will be a front-end one (which I wouldn't use in production due to the processing time and because search engines won't understand what the document is) and a Node.js one which will transform it and give it to the browser as if it were HTML.

If you'd like it in another language submit it to the [issue tracker](https://github.com/OscarGodson/HTML6/issues) or send a [pull request](https://github.com/OscarGodson/HTML6/pulls).

### Section 6 - Conclusion

This is simply an idea. It's an idea I've personally [had for years](http://kneedeepincode.com/topics/a-better-html/), but it's in no way finished. There's still a lot missing and a lot I haven't yet thought about, but it's a start. I'd love to hear your thoughts in the [issue tracker](https://github.com/OscarGodson/HTML6/issues) or better yet, send a [pull request](https://github.com/OscarGodson/HTML6/pulls) of what you think should be changed or added.

#### Copyright on all documents and code:


Copyright (c) 2012 Oscar Godson oscargodson@gmail.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
