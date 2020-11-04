#include "colors.inc"

global_settings {
  ambient_light <0,0,0>
}

camera {
  location <0,3,0>
  look_at  <2,2,2>
  sky      y
  right    x * image_width / image_height
}

sphere {
  <2,2,2>, 1
  finish {
    reflection 1
  }
}

plane {
  y, 0
  pigment {
      checker
      pigment { White },
      pigment { Black }
      scale 1.0
  }
}

light_source {
  <1,1,1>
  color White
  fade_power 3
  fade_distance 10
}
