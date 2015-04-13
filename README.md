# Resolume 4 Flash Template

This repo contains a base template for creating Flash Actionscript 3.0 based plugins for Resolume 4. The purpose of this is to help you get crackin' on building amazing plugins quicker.

# Resources

[Read the Manual (Most info was pulled from this.)](https://resolume.com/manual/en/r4/generative)

# Corrections

If you're following the Resolume example code you should be aware that there are some errors in the code. I've created a StarterTemplate based on this that corrects the errors. See the corrections below.

```
/**
*    Very basic Resolume Flash communication AS3 DocumentClass example
**/  
package  {
  
  import flash.display.MovieClip;
  
  //import the resolume communication classes
  import resolumeCom.*;
  import resolumeCom.parameters.*;
  import resolumeCom.events.*;

  public class StarterTemplate extends MovieClip {
    
    //create the resolume object that will do all the hard work for you
    var resolume:Resolume = new Resolume();
    
    //create as many different parameters as you like
    var paramScaleX:FloatParameter = resolume.addFloatParameter("Scale X", 0.5);
    
    public function StarterTemplate() {
      // constructor code
      //set callback, this will notify us when a parameter has changed
      resolume.addParameterListener(parameterChanged);
    }
    
    //this will be called every time you change a parameter in Resolume
    public function parameterChanged(event:ChangeEvent): void {
      //check to see what parameter was changed
      if (event.object == this.logo.scaleX) {
        //now it gets interesting
        //do whatever you like with the value of the parameter
        this.logo.scaleX = this.paramScaleX.getValue() * 2.0;
      }
    }
  }
  
}

```