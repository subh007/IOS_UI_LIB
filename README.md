IOS_UI_LIB
==========

I stated this project to draw various geometric figure.
I want to convert this project into UI library, so that one can draw the images with different geometry.


draw a circle :

  ![Alt text](https://raw.github.com/subh007/IOS_UI_LIB/master/images/circle.png)
  
  code snippet :
<pre><code>
    [self.view addSubview:[self drawCircleAtPoint:CGPointMake(200, 200) WithRadius:100]];
</code></pre>

draw a semi circle :
      
SemiCircle

  ![Alt text](https://raw.github.com/subh007/IOS_UI_LIB/master/images/semi.png)
  
DownSemiCircle :
      
  ![Alt text](https://raw.github.com/subh007/IOS_UI_LIB/master/images/downsemi.png)
      
Right SemiCircle

  ![Alt text](https://raw.github.com/subh007/IOS_UI_LIB/master/images/rightsemi.png)    

Left SemiCircle

  ![Alt text](https://raw.github.com/subh007/IOS_UI_LIB/master/images/leftsemi.png)

  code snippet:
  
  <pre><code>
    SemiCircle *semi = [[SemiCircle alloc]initWithFrame:CGRectMake(100, 100, 500, 500) WithFace:LEFT_SEMICIRCLE];
    [self.view addSubview:semi];
    [semi setBackgroundColor:[UIColor clearColor]];
</code></pre>
  
