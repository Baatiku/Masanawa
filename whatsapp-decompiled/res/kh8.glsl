#version 300 es
#extension GL_EXT_YUV_target : require
#extension GL_OES_EGL_image_external : require

/*
This shader converts pixels from YUV to RGBA non-linear conserving BT2020 color space.
This is done using a custom texture sampler that retrieves raw YUV pixel values and manually
converting the values. Otherwise, OpenGl will convert automatically whenever we write to a
Frame Buffer configured as RGBA format but will not preserve the right color space.
*/

precision mediump float;

in vec2 vTextureCoord;
out vec4 outColor;
uniform __samplerExternal2DY2YEXT sTexture;
// Color range flag: >0.5 = full range, 0 (default) = limited range.
uniform float uColorRange;

const mat4 YUV_TO_RGB_REC2020 = mat4(1.167808, 1.167808, 1.167808, 0, 0, -0.187877, 2.148072, 0, 1.683611, -0.652337, 0, 0, -0.914865, 0.347048, -1.147095, 1);
const mat4 YUV_TO_RGB_REC2020_FULL = mat4(1.0, 1.0, 1.0, 0, 0, -0.16455, 1.8814, 0, 1.4746, -0.57135, 0, 0, -0.7373, 0.36795, -0.9407, 1);

void main() {
  highp vec3 srcYuv = texture(sTexture, vTextureCoord).xyz;

  mat4 yuvToRgb = uColorRange > 0.5 ? YUV_TO_RGB_REC2020_FULL : YUV_TO_RGB_REC2020;

  // Rec. 2020 YUV to RGB non-linear
  highp vec3 rgb_BT2020 = clamp((yuvToRgb * vec4(vec3(srcYuv), 1.)).rgb, 0., 1.);
  outColor = vec4(rgb_BT2020, 1.0);
}
