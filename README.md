
# Boost Flutter Code

This library help you to write flutter in very fast manner.




## Features

- Easy to add responsive
- Code are more readable
- Too short to code


## Documentation

### install this package to your project

add library in pubspec.yaml.
```bash
  ynh_flutter:
    path: https://github.com/yannainghtunn/ynh_flutter.git
```

### For Responsive

#### `hideOn` hide your Widget on some value of width
```
  Container().hideOn(context,720)
  # 720 is width value. If width value is equal or heigher than 720 than Container() will be hide.

  Container().hideOn(context,720,heigher:false)
  # if width is lower than 720 than Container() will be hide.
  
```
#### `rowOn()`, `columnOn()`, `expandOn` are also same. not need 
```bash
  Column().rowOn(720)
  # convert to row if width is equal or greater than 720.

  Row().columnOn(720,heigher:false)
  # convert to column if width is lower than 720.

  Row().columnOn(720,fullScreen:true)
  # if fullScreen=true then maxWidth is compared by full screen width.
    default is maxWidth of LayoutBuilder.

  Container().expandOn(720)
  # Expanded on width is equal or heigher than 720.
```
  

#### `maxWidth()` add max width to your  `Widget`
  
```bash
  Text("Hello").maxWidth(720)
  Text("Hi").minHeight(200)
```
Same for `minWidth` `maxHeight`


#### `RV()` dynamic responsive values
```bash
  Container(
    color: Colors.red.RV(context,Colors.green)
  )
  # For width lower than 720 Container color is red, but for larger
    Container color is green.
  # maxWidth is optional. Default is 720.
```

#### `ResponsiveLayout()` show Widget on specific width
```bash
  ResponsiveLayout(
    small: Text("Small View"),
    large: Text("Large View"),
    maxWidth: 720
  )
  # show Text("Small View") for width lower than 720.
  # show Text("Large View") for width equal or larger than 720.
  # maxWidth is optional. Default is 720
```


### Common Extensions
#### - `center()` make widget center.
#### - `expanded()` make widget expanded.
#### - `scrollable()` make widget scrollable.
#### - `right()`, `left()`, `bottom()`, `top()` align your Widget.
#### - `p()` add padding to widget.
```bash
  Container().p(15)
  # add padding to all as 15.

  Container().px(10)
  # add padding to x-axis as 10.

  Container().pt(20)
  # add padding to top as 20.
```

### Common Widgets
#### - `TextSmall()`  fontSize-12
#### - `TextMedium()`  fontSize-14, FontWeight.w400 
#### - `TextLarge()`  fontSize-16, FontWeight.bold
#### - `Height()`  Space Vertically. Default is 10.
#### - `Width()`  Space Horizontally. Default is 10.





## Lessons Learned

What did you learn while building this project? What challenges did you face and how did you overcome them?

