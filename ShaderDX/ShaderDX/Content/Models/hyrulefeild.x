xof 0302txt 0032

// Direct3D X file written by ModelConverterX
// quarta-feira, 24 de dezembro de 2014

template Header {
   <3D82AB43-62DA-11cf-AB39-0020AF71E433>
   WORD major;
   WORD minor;
   DWORD flags;
}

template GuidToName {
   <7419dfe5-b73a-4d66-98d8-c082591dc9e7>
   STRING Guid;
   STRING Name;
}

template Vector {
   <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
   FLOAT x;
   FLOAT y;
   FLOAT z;
}

template SkinWeight {
   <C3B5EDF9-7345-463d-96D7-6386E2EC4030>
   STRING boneRef;
   FLOAT weight;
}

template SkinWeightGroup {
   <E7B502DB-0C05-4288-A025-80762E19E0AB>
   DWORD nWeights;
   array SkinWeight skinWeights[nWeights];
}

template Coords2d {
   <F6F23F44-7686-11cf-8F52-0040333594A3>
   FLOAT u;
   FLOAT v;
}

template Matrix4x4 {
   <F6F23F45-7686-11cf-8F52-0040333594A3>
   array FLOAT matrix[16];
}

template ColorRGBA {
   <35FF44E0-6C7C-11cf-8F52-0040333594A3>
   FLOAT red;
   FLOAT green;
   FLOAT blue;
   FLOAT alpha;
}

template ColorRGB {
   <D3E16E81-7835-11cf-8F52-0040333594A3>
   FLOAT red;
   FLOAT green;
   FLOAT blue;
}

template TextureFilename {
   <A42790E1-7810-11cf-8F52-0040333594A3>
   STRING filename;
}

template Material {
   <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
   ColorRGBA faceColor;
   FLOAT power;
   ColorRGB specularColor;
   ColorRGB emissiveColor;
   [...]
}

template MeshFace {
   <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
   DWORD nFaceVertexIndices;
   array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshTextureCoords {
   <F6F23F40-7686-11cf-8F52-0040333594A3>
   DWORD nTextureCoords;
   array Coords2d textureCoords[nTextureCoords];
}

template MeshSkinWeights {
   <C7E2131A-30F3-4eb9-AACC-E0AE11D8FE62>
   DWORD nVertices;
   array SkinWeightGroup skinWeights[nVertices];
}

template MeshMaterialList {
   <F6F23F42-7686-11cf-8F52-0040333594A3>
   DWORD nMaterials;
   DWORD nFaceIndexes;
   array DWORD faceIndexes[nFaceIndexes];
   [Material]
}

template MeshNormals {
   <F6F23F43-7686-11cf-8F52-0040333594A3>
   DWORD nNormals;
   array Vector normals[nNormals];
   DWORD nFaceNormals;
   array MeshFace faceNormals[nFaceNormals];
}

template Mesh {
   <3D82AB44-62DA-11cf-AB39-0020AF71E433>
   DWORD nVertices;
   array Vector vertices[nVertices];
   DWORD nFaces;
   array MeshFace faces[nFaces];
   [...]
}

template BoneInfo {
   <1FF0AE59-4B0B-4dfe-88F2-91D58E395767>
   STRING boneName;
}

template AnimLinkName {
   <0057EC91-F96B-4f5e-9CFB-0E305F39DA1A>
   STRING linkName;
}

template IKChain {
   <2684B333-AAB2-45d9-87D8-6E2BB22616AD>
   STRING chainName;
   STRING startNode;
   STRING endNode;
}

template ConstraintInfo {
   <8713D495-C538-44dc-AE54-1097E7C93D13>
   Boolean bActive;
   Boolean bLimited;
   FLOAT fUpperLimit;
   FLOAT fLowerLimit;
}

template JointConstraint {
   <BE433CF1-BCC0-43f8-9FE5-DB0556414426>
   array ConstraintInfo Rotation[3];
   array ConstraintInfo Translation[3];
}

template FrameTransformMatrix {
   <F6F23F41-7686-11cf-8F52-0040333594A3>
   Matrix4x4 frameMatrix;
}

template Frame {
   <3D82AB46-62DA-11cf-AB39-0020AF71E433>
   [...]
}

template FloatKeys {
   <10DD46A9-775B-11cf-8F52-0040333594A3>
   DWORD nValues;
   array FLOAT values[nValues];
}

template TimedFloatKeys {
   <F406B180-7B3B-11cf-8F52-0040333594A3>
   DWORD time;
   FloatKeys tfkeys;
}

template AnimationKey {
   <10DD46A8-775B-11cf-8F52-0040333594A3>
   DWORD keyType;
   DWORD nKeys;
   array TimedFloatKeys keys[nKeys];
}

template AnimationOptions {
   <E2BF56C0-840F-11cf-8F52-0040333594A3>
   DWORD openclosed;
   DWORD positionquality;
}

template Animation {
   <3D82AB4F-62DA-11cf-AB39-0020AF71E433>
   [...]
}

template AnimationSet {
   <3D82AB50-62DA-11cf-AB39-0020AF71E433>
   [Animation]
}

template DiffuseTextureFileName {
   <E00200E2-D4AB-481a-9B85-E20F9AE07401>
   STRING filename;
}

template SpecularTextureFileName {
   <DF64E0D7-4FFA-4634-9DA0-3EF2FAA081CE>
   STRING filename;
}

template AmbientTextureFileName {
   <E00200E2-D4AB-481a-9B85-E20F9AE07402>
   STRING filename;
}

template EmissiveTextureFileName {
   <E00200E2-D4AB-481a-9B85-E20F9AE07403>
   STRING filename;
}

template ReflectionTextureFileName {
   <E00200E2-D4AB-481a-9B85-E20F9AE07404>
   STRING filename;
}

template ShininessTextureFileName {
   <E00200E2-D4AB-481a-9B85-E20F9AE07405>
   STRING filename;
}

template BumpTextureFileName {
   <E00200E2-D4AB-481a-9B85-E20F9AE07406>
   STRING filename;
}

template DisplacementTextureFileName {
   <E00200E2-D4AB-481a-9B85-E20F9AE07407>
   STRING filename;
}

template DetailTextureFileName {
   <C223DC28-5C0E-41bc-9706-A30E023EF118>
   STRING filename;
}

template FresnelTextureFileName {
   <C16742E5-974D-4576-870D-2047C79DF7A9>
   STRING filename;
}

template FS10Material {
   <16B4B490-C327-42e3-8A71-0FA35C817EA2>
   ColorRGBA FallbackDiffuse;
   ColorRGB  Specular;
   FLOAT     Power;
   FLOAT     DetailScale;
   FLOAT     BumpScale;
   FLOAT     EnvironmentLevelScale;
   Boolean   bUseGlobalEnv;
   Boolean   bModEnvInvDiffuseAlpha;
   Boolean   bModEnvSpecularMapAlpha;
  Boolean   bFresnelDiffuse; Boolean bFresnelSpecular; Boolean bFresnelEnvironment;
   Boolean   bUsePrecipitation;
   Boolean   bPrecipOffset;
   FLOAT     PrecipOffset;
   FLOAT     SpecMapPowerScale;
   STRING    SrcBlend;
   STRING    DstBlend;
   [...]
}

template AllowBloom {
   <D66E37C9-9DFE-4092-8565-C6E4C3498235>
   Boolean     AllowBloom;
}

template BloomData {
   <58ED1E67-0D18-44EF-B676-40BB20C1EE88>
   Boolean BloomCopy;
   Boolean BloomModAlpha;
}

template SpecularBloomFloor {
   <21195174-A31D-47ed-BE5A-04ACAD4C3544>
   FLOAT     SpecularBloomFloor;
}

template AmbientLightScale {
   <4CC76AEB-E84F-4688-AB49-E1DC4B9273C7>
   FLOAT     AmbientLightScale;
}

template EmissiveData {
   <A02EF480-3ED3-433d-A71D-5CAC4775757A>
   STRING   EmissiveBlend;
}

template AlphaData {
   <10DB69F3-E0EE-4fb3-8055-63E539EF5885>
   Boolean  ZTestAlpha;
   FLOAT    AlphaTestValue;
   STRING   AlphaTestFunction;
   Boolean  FinalAlphaWrite;
   FLOAT    FinalAlphaWriteValue;
}

template EnhancedParameters {
   <99CAD20D-DCC5-4ad4-ADAE-ED3CDE30CC02>
   Boolean  AssumeVerticalNormal;
   Boolean  ZWriteAlpha;
   Boolean  NoZWrite;
   Boolean  VolumeShadow;
   Boolean  NoShadow;
   Boolean  PrelitVertices;
}

template BaseMaterialSpecular {
   <E294ED4E-5C5A-4927-B19A-6A2D445FAF24>
   Boolean  AllowBaseMaterialSpecular;
}

template BaseMaterialSkin {
   <B640F860-9E28-4cab-AD46-CACCE2A418AC>
   Boolean  AllowSkinning;
}

template DoubleSidedMaterial {
   <B1C6C3B0-DD1A-417b-919A-B04BAD6AE06D>
   Boolean  DoubleSided;
}

template BlendConstantSetting {
   <48EA96C3-588E-451d-B4BB-0C746C8380D9>
   Boolean  BlendConstant;
}

template ForceTextureAddressWrapSetting {
   <046EE84C-7977-4a11-AA2B-C79FF5391EDD>
   Boolean  ForceTextureAddressWrap;
}

template ForceTextureAddressClampSetting {
   <DB108D57-A3A8-4b76-8CB0-8379CDDEC074>
   Boolean  ForceTextureAddressClamp;
}

template NoSpecularBloom {
   <BCE314D2-15DB-4ffd-9F6F-0763B2A4616F>
   Boolean  AllowSpecularBloom;
}

template EmissiveBloom {
   <5FF8D7A2-30B5-41bc-A891-28A427D78246>
   Boolean  AllowEmissiveBloom;
}

template BlendDiffuseByBaseAlpha {
   <A623FA7C-37CB-4d17-B702-854E0DBDB467>
   Boolean  BlendDiffByBaseAlpha;
}

template BlendDiffuseByInverseSpecularMapAlpha {
   <DAA68529-1C27-4182-9D97-E631A4759EA7>
   Boolean  BlendDiffuseByInvSpecAlpha;
}

template NNumberTexture {
   <E49E744A-CDBE-40c1-9C89-4A46BEB44D33>
   Boolean  IsNNumberTexture;
}

template PartData {
   <79B183BA-7E70-44d1-914A-23B304CA91E5>
   DWORD nByteCount;
   array BYTE XMLData[ nByteCount ];
}

Header {
	1;
	0;
	1;
}

GuidToName {
   "{1a41e5fb-cc8b-4302-a8af-ab53220be6b8}";
   "hyrulefeild";
}
Frame masterfrm {
FrameTransformMatrix {
   1.0, 0.0, 0.0, 0.0,
   0.0, 0.0, 1.0, 0.0,
   0.0, 1.0, 0.0, 0.0,
   0.0, 0.0, 0.0, 1.0;
}

Frame frmpart0 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Frame frmpart1_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part1 {
6;
11.70188; -1.11876; -36.79530;,
11.66200; -1.12925; -36.79500;,
11.70212; -1.13875; -36.79472;,
11.57536; -1.12368; -36.79468;,
11.54499; -1.09581; -36.79549;,
11.55867; -1.13469; -36.79435;;

2;
3; 2, 1, 0;,
3; 5, 4, 3;;

MeshMaterialList {
1;
2;
0,
0;
Material mat1 {
  0.400000; 0.400000; 0.400000; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  FS10Material {
    0.400000; 0.400000; 0.400000; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
  }
}
}

MeshNormals {
6;
-0.00008; 0.02935; 0.99957;,
-0.00008; 0.02935; 0.99957;,
-0.00008; 0.02935; 0.99957;,
0.00015; 0.02929; 0.99957;,
0.00015; 0.02929; 0.99957;,
0.00015; 0.02929; 0.99957;;

2;
3; 2, 1, 0;,
3; 5, 4, 3;;
}
}

}

Frame frmpart2_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part2 {
4;
10.14000; -0.77000; -31.39500;,
10.14000; -0.77000; -30.94500;,
11.94000; -0.77000; -31.39500;,
11.94000; -0.77000; -30.94500;;

2;
3; 2, 1, 0;,
3; 3, 1, 2;;

MeshMaterialList {
1;
2;
0,
0;
Material mat2 {
  0.496875; 0.496875; 0.496875; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "7F746AD1_c.bmp";
  }
  DiffuseTextureFileName  {
     "7F746AD1_c.bmp";
  }
  FS10Material {
    0.496875; 0.496875; 0.496875; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "7F746AD1_c.bmp";
    }
  }
}
}

MeshNormals {
4;
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;;

2;
3; 2, 1, 0;,
3; 3, 1, 2;;
}
MeshTextureCoords {
4;
0.00000; 1.00000;,
0.00000; 0.00000;,
1.00000; 1.00000;,
1.00000; 0.00000;;
}

}

}

Frame frmpart3_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part3 {
6;
6.02000; -1.27000; -18.30000;,
4.95500; -1.40000; -17.68500;,
6.72000; -1.30000; -17.30000;,
6.72000; -1.30000; -17.30000;,
4.95500; -1.40000; -17.68500;,
5.65500; -1.43000; -16.68500;;

2;
3; 2, 1, 0;,
3; 5, 4, 3;;

MeshMaterialList {
1;
2;
0,
0;
Material mat3 {
  0.671875; 0.671875; 0.671875; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "25E8E1F4_c.bmp";
  }
  DiffuseTextureFileName  {
     "25E8E1F4_c.bmp";
  }
  FS10Material {
    0.671875; 0.671875; 0.671875; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "25E8E1F4_c.bmp";
    }
  }
}
}

MeshNormals {
6;
-0.07413; 0.99390; 0.08171;,
-0.07413; 0.99390; 0.08171;,
-0.07413; 0.99390; 0.08171;,
-0.07414; 0.99389; 0.08171;,
-0.07414; 0.99389; 0.08171;,
-0.07414; 0.99389; 0.08171;;

2;
3; 2, 1, 0;,
3; 5, 4, 3;;
}
MeshTextureCoords {
6;
1.00000; 0.00000;,
1.00000; 1.00000;,
0.00000; 0.00000;,
0.00000; 0.00000;,
1.00000; 1.00000;,
0.00000; 1.00000;;
}

}

}

Frame frmpart4_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part4 {
17;
11.64000; -0.77000; -28.09500;,
10.44000; -0.77000; -28.09500;,
11.64000; -0.77000; -26.89500;,
10.44000; -0.77000; -26.89500;,
6.72000; -1.30000; -17.30000;,
10.06500; -0.77000; -20.70500;,
6.02000; -1.27000; -18.30000;,
6.02000; -1.27000; -18.30000;,
10.06500; -0.77000; -20.70500;,
9.18500; -0.77000; -21.52000;,
16.91000; -0.77000; -26.20500;,
16.68500; -0.77000; -25.03500;,
11.64000; -0.77000; -25.69500;,
11.64000; -0.77000; -25.69500;,
10.44000; -0.77000; -25.69500;,
10.06500; -0.77000; -20.70500;,
9.18500; -0.77000; -21.52000;;

8;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 9, 8, 7;,
3; 11, 2, 10;,
3; 12, 2, 11;,
3; 15, 14, 13;,
3; 16, 14, 15;;

MeshMaterialList {
1;
8;
0,
0,
0,
0,
0,
0,
0,
0;
Material mat4 {
  0.715625; 0.715625; 0.715625; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "54A04A95_c.bmp";
  }
  DiffuseTextureFileName  {
     "54A04A95_c.bmp";
  }
  FS10Material {
    0.715625; 0.715625; 0.715625; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "54A04A95_c.bmp";
    }
  }
}
}

MeshNormals {
17;
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
-0.07423; 0.99388; 0.08178;,
-0.07423; 0.99388; 0.08178;,
-0.07423; 0.99388; 0.08178;,
-0.07482; 0.99392; 0.08079;,
-0.07482; 0.99392; 0.08079;,
-0.07482; 0.99392; 0.08079;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;;

8;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 9, 8, 7;,
3; 11, 2, 10;,
3; 12, 2, 11;,
3; 15, 14, 13;,
3; 16, 14, 15;;
}
MeshTextureCoords {
17;
0.00000; 1.00000;,
1.00000; 1.00000;,
0.00000; 0.00000;,
1.00000; 0.00000;,
0.00000; 4.00000;,
0.00000; 0.00000;,
1.00000; 4.00000;,
1.00000; 4.00000;,
0.00000; 0.00000;,
1.00000; 0.00000;,
0.00000; 4.00000;,
1.00000; 4.00000;,
1.00000; 0.00000;,
0.00000; -1.00000;,
1.00000; -1.00000;,
0.00000; 2.00000;,
1.00000; 2.00000;;
}

}

}

Frame frmpart5_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part5 {
8;
18.07000; -0.77000; -25.98500;,
16.91000; -0.77000; -26.20500;,
17.84000; -0.77000; -24.81500;,
16.68500; -0.77000; -25.03500;,
11.64000; -0.77000; -29.29500;,
10.44000; -0.77000; -29.29500;,
11.64000; -0.77000; -28.09500;,
10.44000; -0.77000; -28.09500;;

4;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 7, 5, 6;;

MeshMaterialList {
1;
4;
0,
0,
0,
0;
Material mat5 {
  0.715625; 0.715625; 0.715625; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "25E8E1F4_c.bmp";
  }
  DiffuseTextureFileName  {
     "25E8E1F4_c.bmp";
  }
  FS10Material {
    0.715625; 0.715625; 0.715625; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "25E8E1F4_c.bmp";
    }
  }
}
}

MeshNormals {
8;
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;;

4;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 7, 5, 6;;
}
MeshTextureCoords {
8;
0.00000; 1.00000;,
0.00000; 0.00000;,
1.00000; 1.00000;,
1.00000; 0.00000;,
0.00000; 1.00000;,
1.00000; 1.00000;,
0.00000; 0.00000;,
1.00000; 0.00000;;
}

}

}

Frame frmpart6_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part6 {
4;
11.64000; -0.77000; -26.89500;,
10.44000; -0.77000; -26.89500;,
11.64000; -0.77000; -25.69500;,
10.44000; -0.77000; -25.69500;;

2;
3; 2, 1, 0;,
3; 3, 1, 2;;

MeshMaterialList {
1;
2;
0,
0;
Material mat6 {
  0.715625; 0.715625; 0.715625; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "6D92D9A3_c.bmp";
  }
  DiffuseTextureFileName  {
     "6D92D9A3_c.bmp";
  }
  FS10Material {
    0.715625; 0.715625; 0.715625; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "6D92D9A3_c.bmp";
    }
  }
}
}

MeshNormals {
4;
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;;

2;
3; 2, 1, 0;,
3; 3, 1, 2;;
}
MeshTextureCoords {
4;
0.00000; 0.00000;,
1.00000; 0.00000;,
0.00000; 1.00000;,
1.00000; 1.00000;;
}

}

}

Frame frmpart7_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part7 {
12;
43.11500; 1.96500; -28.93000;,
41.61000; 4.76000; -33.29000;,
41.28000; 1.96500; -32.91000;,
37.12500; 4.61000; -39.82000;,
33.99000; 1.96500; -43.63501;,
36.86500; 1.96500; -39.51500;,
36.86500; 1.96500; -39.51500;,
41.28000; 1.96500; -32.91000;,
37.12500; 4.61000; -39.82000;,
37.12500; 4.61000; -39.82000;,
41.28000; 1.96500; -32.91000;,
41.61000; 4.76000; -33.29000;;

4;
3; 2, 1, 0;,
3; 5, 4, 3;,
3; 8, 7, 6;,
3; 11, 10, 9;;

MeshMaterialList {
1;
4;
0,
0,
0,
0;
Material mat7 {
  0.359375; 0.359375; 0.359375; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "CC5EDAA_c.bmp";
  }
  DiffuseTextureFileName  {
     "CC5EDAA_c.bmp";
  }
  FS10Material {
    0.359375; 0.359375; 0.359375; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "CC5EDAA_c.bmp";
    }
  }
}
}

MeshNormals {
12;
-0.89613; 0.16198; 0.41317;,
-0.89613; 0.16198; 0.41317;,
-0.89613; 0.16198; 0.41317;,
-0.81140; 0.14505; 0.56621;,
-0.81140; 0.14505; 0.56621;,
-0.81140; 0.14505; 0.56621;,
-0.82267; 0.14428; 0.54990;,
-0.82267; 0.14428; 0.54990;,
-0.82267; 0.14428; 0.54990;,
-0.81391; 0.17156; 0.55508;,
-0.81391; 0.17156; 0.55508;,
-0.81391; 0.17156; 0.55508;;

4;
3; 2, 1, 0;,
3; 5, 4, 3;,
3; 8, 7, 6;,
3; 11, 10, 9;;
}
MeshTextureCoords {
12;
1.50000; 1.00000;,
1.00000; 1.00000;,
1.00000; 0.00000;,
0.00000; 1.00000;,
-0.50000; 1.00000;,
0.00000; 0.00000;,
0.00000; 0.00000;,
1.00000; 0.00000;,
0.00000; 1.00000;,
0.00000; 1.00000;,
1.00000; 0.00000;,
1.00000; 1.00000;;
}

}

}

Frame frmpart8_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part8 {
12;
40.43000; 5.96500; -33.81000;,
37.84500; 2.96500; -35.70500;,
39.96000; 2.96500; -33.50000;,
37.84500; 2.96500; -35.70500;,
37.14500; 5.96500; -38.83000;,
36.67500; 2.96500; -38.52000;,
38.47500; 5.96500; -36.11500;,
37.14500; 5.96500; -38.83000;,
37.84500; 2.96500; -35.70500;,
38.47500; 5.96500; -36.11500;,
37.84500; 2.96500; -35.70500;,
40.43000; 5.96500; -33.81000;;

4;
3; 2, 1, 0;,
3; 5, 4, 3;,
3; 8, 7, 6;,
3; 11, 10, 9;;

MeshMaterialList {
1;
4;
0,
0,
0,
0;
Material mat8 {
  0.259375; 0.259375; 0.262500; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "42C6B59D_c.bmp";
  }
  DiffuseTextureFileName  {
     "42C6B59D_c.bmp";
  }
  FS10Material {
    0.259375; 0.259375; 0.262500; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "42C6B59D_c.bmp";
    }
  }
}
}

MeshNormals {
12;
-0.70969; 0.18153; 0.68073;,
-0.70969; 0.18153; 0.68073;,
-0.70969; 0.18153; 0.68073;,
-0.90812; 0.18127; 0.37744;,
-0.90812; 0.18127; 0.37744;,
-0.90812; 0.18127; 0.37744;,
-0.87149; 0.24136; 0.42692;,
-0.87149; 0.24136; 0.42692;,
-0.87149; 0.24136; 0.42692;,
-0.74011; 0.24121; 0.62773;,
-0.74011; 0.24121; 0.62773;,
-0.74011; 0.24121; 0.62773;;

4;
3; 2, 1, 0;,
3; 5, 4, 3;,
3; 8, 7, 6;,
3; 11, 10, 9;;
}
MeshTextureCoords {
12;
1.00000; 1.00000;,
0.50000; 0.00000;,
1.00000; 0.00000;,
0.50000; 0.00000;,
0.00000; 1.00000;,
0.00000; 0.00000;,
0.50000; 1.00000;,
0.00000; 1.00000;,
0.50000; 0.00000;,
0.50000; 1.00000;,
0.50000; 0.00000;,
1.00000; 1.00000;;
}

}

}

Frame frmpart9_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part9 {
4;
36.07500; 6.00000; -34.44000;,
40.26000; 6.00000; -33.92500;,
36.58500; 6.00000; -38.62500;,
40.77500; 6.00000; -38.11000;;

2;
3; 2, 1, 0;,
3; 3, 1, 2;;

MeshMaterialList {
1;
2;
0,
0;
Material mat9 {
  0.687500; 0.687500; 0.687500; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "10EF1FD4_c.bmp";
  }
  DiffuseTextureFileName  {
     "10EF1FD4_c.bmp";
  }
  FS10Material {
    0.687500; 0.687500; 0.687500; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "10EF1FD4_c.bmp";
    }
  }
}
}

MeshNormals {
4;
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;;

2;
3; 2, 1, 0;,
3; 3, 1, 2;;
}
MeshTextureCoords {
4;
0.00000; -1.00000;,
2.00000; -1.00000;,
0.00000; 1.00000;,
2.00000; 1.00000;;
}

}

}

Frame frmpart10_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part10 {
191;
-18.40500; -3.27000; 8.15500;,
-18.40500; -3.27000; 14.20500;,
-17.33500; -3.27000; 13.58500;,
-19.60500; -3.27000; 8.15500;,
-15.32500; -0.27000; -10.24500;,
-16.07000; -0.27000; -9.42000;,
-14.18000; -0.27000; -9.58500;,
-14.96000; -0.27000; -8.78000;,
-14.91500; -2.79500; 18.79500;,
-15.91000; -2.93000; 19.60000;,
-14.20500; -2.70000; 20.28000;,
-14.20500; -2.70000; 20.28000;,
-15.91000; -2.93000; 19.60000;,
-15.26000; -2.84500; 20.89000;,
-15.87500; -2.92500; 16.75000;,
-18.40500; -3.27000; 14.20500;,
-14.91500; -2.79500; 18.79500;,
-14.91500; -2.79500; 18.79500;,
-18.40500; -3.27000; 14.20500;,
-15.91000; -2.93000; 19.60000;,
-17.33500; -3.27000; 13.58500;,
-18.40500; -3.27000; 14.20500;,
-15.87500; -2.92500; 16.75000;,
-19.60500; -3.27000; 6.95500;,
-18.40500; -3.27000; 6.95500;,
-19.60500; -3.27000; -0.24500;,
-18.40500; -3.27000; -0.24500;,
-24.80500; -3.27000; 6.09000;,
-24.80500; -3.27000; 7.14000;,
-19.60500; -3.27000; 6.95500;,
-19.60500; -3.27000; 8.15500;,
-16.07000; -0.27000; -9.42000;,
-17.25500; -1.20000; -7.64000;,
-14.96000; -0.27000; -8.78000;,
-14.96000; -0.27000; -8.78000;,
-17.25500; -1.20000; -7.64000;,
-16.17000; -1.18000; -7.06000;,
-15.26000; -2.84500; 20.89000;,
-11.04500; -3.01000; 24.75000;,
-14.20500; -2.70000; 20.28000;,
-14.20500; -2.70000; 20.28000;,
-11.04500; -3.01000; 24.75000;,
-11.04500; -2.82500; 23.19000;,
-11.04500; -2.82500; 23.19000;,
-11.04500; -3.01000; 24.75000;,
-10.48500; -2.92500; 23.71500;,
-3.68000; -1.04500; -14.59500;,
-3.68000; -0.75000; -13.34000;,
0.15500; -1.52000; -15.71500;,
0.15500; -1.52000; -15.71500;,
-3.68000; -0.75000; -13.34000;,
0.59000; -1.28500; -14.62000;,
-8.40500; -1.55500; -14.02000;,
-6.57000; -1.05500; -12.96000;,
-3.68000; -1.04500; -14.59500;,
-3.68000; -1.04500; -14.59500;,
-6.57000; -1.05500; -12.96000;,
-3.68000; -0.75000; -13.34000;,
-11.04500; -1.72000; -13.20500;,
-11.04500; -1.36500; -11.70000;,
-8.40500; -1.55500; -14.02000;,
-8.40500; -1.55500; -14.02000;,
-11.04500; -1.36500; -11.70000;,
-6.57000; -1.05500; -12.96000;,
-11.04500; -1.72000; -13.20500;,
-15.32500; -0.27000; -10.24500;,
-11.04500; -1.36500; -11.70000;,
-11.04500; -1.36500; -11.70000;,
-15.32500; -0.27000; -10.24500;,
-14.18000; -0.27000; -9.58500;,
29.31000; -0.91000; -4.84000;,
30.54000; -1.34000; -1.64500;,
30.43000; -0.73500; -5.49000;,
30.43000; -0.73500; -5.49000;,
30.54000; -1.34000; -1.64500;,
31.69000; -1.17500; -2.21000;,
28.39500; 0.68000; -9.77500;,
29.60500; 0.43000; -9.07500;,
28.32500; 0.81500; -12.77500;,
28.32500; 0.81500; -12.77500;,
29.60500; 0.43000; -9.07500;,
29.44500; 0.63000; -13.42000;,
28.39500; 0.68000; -9.77500;,
29.31000; -0.91000; -4.84000;,
29.60500; 0.43000; -9.07500;,
29.60500; 0.43000; -9.07500;,
29.31000; -0.91000; -4.84000;,
30.43000; -0.73500; -5.49000;,
25.76000; 0.23000; -19.79500;,
28.32500; 0.81500; -12.77500;,
27.58500; 0.18000; -18.74000;,
27.58500; 0.18000; -18.74000;,
28.32500; 0.81500; -12.77500;,
29.44500; 0.63000; -13.42000;,
20.99000; -0.50500; -23.12000;,
25.76000; 0.23000; -19.79500;,
21.66500; -0.62500; -24.10500;,
21.66500; -0.62500; -24.10500;,
25.76000; 0.23000; -19.79500;,
25.76000; -0.00500; -21.32000;,
25.76000; 0.23000; -19.79500;,
27.58500; 0.18000; -18.74000;,
25.76000; -0.00500; -21.32000;,
18.40000; -1.73500; 3.34000;,
14.56500; -1.39000; 6.05000;,
15.41500; -1.36500; 6.90000;,
18.40000; -1.87000; 1.45500;,
18.40000; -1.73500; 3.34000;,
19.46500; -1.91500; 2.07000;,
7.97000; -0.27000; -1.31000;,
11.04000; -0.72000; 1.02500;,
9.07000; -0.27000; -1.84000;,
18.40000; -1.87000; 1.45500;,
14.56500; -1.39000; 6.05000;,
18.40000; -1.73500; 3.34000;,
11.04000; -0.95500; 3.02500;,
13.42000; -1.46500; 4.33000;,
11.04000; -0.72000; 1.02500;,
11.04000; -0.95500; 3.02500;,
11.04000; -0.72000; 1.02500;,
7.97000; -0.27000; -1.31000;,
12.33000; -1.37500; 4.96000;,
14.56500; -1.39000; 6.05000;,
13.42000; -1.46500; 4.33000;,
12.33000; -1.37500; 4.96000;,
13.42000; -1.46500; 4.33000;,
11.04000; -0.95500; 3.02500;,
13.72000; -1.29500; 6.89500;,
14.56500; -1.39000; 6.05000;,
12.33000; -1.37500; 4.96000;,
6.70500; -0.27000; -5.30000;,
7.97000; -0.27000; -1.31000;,
8.11000; -0.27000; -4.48500;,
9.07000; -0.27000; -1.84000;,
5.97000; 0.07000; -8.37000;,
7.10000; 0.24000; -9.02000;,
5.54000; -0.36500; -11.29500;,
5.54000; -0.36500; -11.29500;,
7.10000; 0.24000; -9.02000;,
6.82000; -0.08500; -11.29500;,
6.70500; -0.27000; -5.30000;,
8.11000; -0.27000; -4.48500;,
5.97000; 0.07000; -8.37000;,
5.97000; 0.07000; -8.37000;,
8.11000; -0.27000; -4.48500;,
7.10000; 0.24000; -9.02000;,
13.52000; -1.27000; 7.14000;,
11.04000; -2.71500; 11.85000;,
14.57000; -1.27000; 7.74000;,
13.52000; -1.27000; 7.14000;,
14.57000; -1.27000; 7.74000;,
13.72000; -1.29500; 6.89500;,
20.07500; -1.78000; 0.49000;,
18.40000; -1.87000; 1.45500;,
19.46500; -1.91500; 2.07000;,
11.04000; -2.29500; 10.06000;,
11.04000; -2.71500; 11.85000;,
13.52000; -1.27000; 7.14000;,
20.47500; -0.25000; -5.84500;,
18.40000; -1.87000; 1.45500;,
21.55500; -0.50000; -5.22500;,
21.55500; -0.50000; -5.22500;,
18.40000; -1.87000; 1.45500;,
20.07500; -1.78000; 0.49000;,
21.29000; 0.62000; -8.71500;,
22.73500; 0.82000; -9.54500;,
22.54000; 1.23000; -13.15500;,
22.54000; 1.23000; -13.15500;,
22.73500; 0.82000; -9.54500;,
23.62000; 1.23000; -12.53500;,
20.47500; -0.25000; -5.84500;,
21.55500; -0.50000; -5.22500;,
21.29000; 0.62000; -8.71500;,
21.29000; 0.62000; -8.71500;,
21.55500; -0.50000; -5.22500;,
22.73500; 0.82000; -9.54500;,
8.87000; -2.97500; 12.95000;,
6.44000; -3.27000; 16.86000;,
9.92500; -3.12000; 13.56000;,
9.92500; -3.12000; 13.56000;,
6.44000; -3.27000; 16.86000;,
8.68500; -3.27000; 15.56500;,
11.04000; -2.71500; 11.85000;,
8.87000; -2.97500; 12.95000;,
9.92500; -3.12000; 13.56000;,
8.68500; -3.27000; 15.56500;,
6.44000; -3.27000; 16.86000;,
7.45000; -3.27000; 17.50500;,
11.04000; -2.29500; 10.06000;,
8.87000; -2.97500; 12.95000;,
11.04000; -2.71500; 11.85000;;

67;
3; 2, 1, 0;,
3; 1, 3, 0;,
3; 6, 5, 4;,
3; 7, 5, 6;,
3; 10, 9, 8;,
3; 13, 12, 11;,
3; 16, 15, 14;,
3; 19, 18, 17;,
3; 22, 21, 20;,
3; 25, 24, 23;,
3; 26, 24, 25;,
3; 29, 28, 27;,
3; 30, 28, 29;,
3; 33, 32, 31;,
3; 36, 35, 34;,
3; 39, 38, 37;,
3; 42, 41, 40;,
3; 45, 44, 43;,
3; 48, 47, 46;,
3; 51, 50, 49;,
3; 54, 53, 52;,
3; 57, 56, 55;,
3; 60, 59, 58;,
3; 63, 62, 61;,
3; 66, 65, 64;,
3; 69, 68, 67;,
3; 72, 71, 70;,
3; 75, 74, 73;,
3; 78, 77, 76;,
3; 81, 80, 79;,
3; 84, 83, 82;,
3; 87, 86, 85;,
3; 90, 89, 88;,
3; 93, 92, 91;,
3; 96, 95, 94;,
3; 99, 98, 97;,
3; 102, 101, 100;,
3; 105, 104, 103;,
3; 108, 107, 106;,
3; 111, 110, 109;,
3; 114, 113, 112;,
3; 117, 116, 115;,
3; 120, 119, 118;,
3; 123, 122, 121;,
3; 126, 125, 124;,
3; 129, 128, 127;,
3; 132, 131, 130;,
3; 133, 131, 132;,
3; 136, 135, 134;,
3; 139, 138, 137;,
3; 142, 141, 140;,
3; 145, 144, 143;,
3; 148, 147, 146;,
3; 151, 150, 149;,
3; 154, 153, 152;,
3; 157, 156, 155;,
3; 160, 159, 158;,
3; 163, 162, 161;,
3; 166, 165, 164;,
3; 169, 168, 167;,
3; 172, 171, 170;,
3; 175, 174, 173;,
3; 178, 177, 176;,
3; 181, 180, 179;,
3; 184, 183, 182;,
3; 187, 186, 185;,
3; 190, 189, 188;;

MeshMaterialList {
1;
67;
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0;
Material mat10 {
  0.687500; 0.687500; 0.687500; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "54A04A95_c.bmp";
  }
  DiffuseTextureFileName  {
     "54A04A95_c.bmp";
  }
  FS10Material {
    0.687500; 0.687500; 0.687500; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "54A04A95_c.bmp";
    }
  }
}
}

MeshNormals {
191;
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
-0.13394; 0.99099; 0.00064;,
-0.13394; 0.99099; 0.00064;,
-0.13394; 0.99099; 0.00064;,
-0.13470; 0.99088; 0.00258;,
-0.13470; 0.99088; 0.00258;,
-0.13470; 0.99088; 0.00258;,
-0.13594; 0.99072; 0.00083;,
-0.13594; 0.99072; 0.00083;,
-0.13594; 0.99072; 0.00083;,
-0.13460; 0.99090; -0.00020;,
-0.13460; 0.99090; -0.00020;,
-0.13460; 0.99090; -0.00020;,
-0.04960; 0.99510; -0.08559;,
-0.04960; 0.99510; -0.08559;,
-0.04960; 0.99510; -0.08559;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
-0.19956; 0.91672; 0.34611;,
-0.19956; 0.91672; 0.34611;,
-0.19956; 0.91672; 0.34611;,
-0.20081; 0.91724; 0.34402;,
-0.20081; 0.91724; 0.34402;,
-0.20081; 0.91724; 0.34402;,
-0.06846; 0.99076; 0.11711;,
-0.06846; 0.99076; 0.11711;,
-0.06846; 0.99076; 0.11711;,
-0.06900; 0.99068; 0.11748;,
-0.06900; 0.99068; 0.11748;,
-0.06900; 0.99068; 0.11748;,
0.06678; 0.99083; 0.11750;,
0.06678; 0.99083; 0.11750;,
0.06678; 0.99083; 0.11750;,
0.05367; 0.97207; -0.22849;,
0.05367; 0.97207; -0.22849;,
0.05367; 0.97207; -0.22849;,
0.05294; 0.97184; -0.22960;,
0.05294; 0.97184; -0.22960;,
0.05294; 0.97184; -0.22960;,
-0.13178; 0.96493; -0.22703;,
-0.13178; 0.96493; -0.22703;,
-0.13178; 0.96493; -0.22703;,
-0.13167; 0.96499; -0.22683;,
-0.13167; 0.96499; -0.22683;,
-0.13167; 0.96499; -0.22683;,
-0.13058; 0.96496; -0.22761;,
-0.13058; 0.96496; -0.22761;,
-0.13058; 0.96496; -0.22761;,
-0.13108; 0.96476; -0.22817;,
-0.13108; 0.96476; -0.22817;,
-0.13108; 0.96476; -0.22817;,
0.16852; 0.95937; -0.22630;,
0.16852; 0.95937; -0.22630;,
0.16852; 0.95937; -0.22630;,
0.15317; 0.95180; -0.26573;,
0.15317; 0.95180; -0.26573;,
0.15317; 0.95180; -0.26573;,
-0.06295; 0.98561; 0.15688;,
-0.06295; 0.98561; 0.15688;,
-0.06295; 0.98561; 0.15688;,
-0.06431; 0.98552; 0.15691;,
-0.06431; 0.98552; 0.15691;,
-0.06431; 0.98552; 0.15691;,
0.17991; 0.98287; 0.04003;,
0.17991; 0.98287; 0.04003;,
0.17991; 0.98287; 0.04003;,
0.18435; 0.98211; 0.03842;,
0.18435; 0.98211; 0.03842;,
0.18435; 0.98211; 0.03842;,
0.02158; 0.95276; 0.30297;,
0.02158; 0.95276; 0.30297;,
0.02158; 0.95276; 0.30297;,
0.02718; 0.95251; 0.30328;,
0.02718; 0.95251; 0.30328;,
0.02718; 0.95251; 0.30328;,
0.09472; 0.98861; -0.11699;,
0.09472; 0.98861; -0.11699;,
0.09472; 0.98861; -0.11699;,
0.09583; 0.98848; -0.11712;,
0.09583; 0.98848; -0.11712;,
0.09583; 0.98848; -0.11712;,
-0.04621; 0.98731; -0.15195;,
-0.04621; 0.98731; -0.15195;,
-0.04621; 0.98731; -0.15195;,
-0.04601; 0.98729; -0.15214;,
-0.04601; 0.98729; -0.15214;,
-0.04601; 0.98729; -0.15214;,
0.11436; 0.98185; -0.15130;,
0.11436; 0.98185; -0.15130;,
0.11436; 0.98185; -0.15130;,
0.04040; 0.99675; -0.06972;,
0.04040; 0.99675; -0.06972;,
0.04040; 0.99675; -0.06972;,
0.08311; 0.99399; -0.07119;,
0.08311; 0.99399; -0.07119;,
0.08311; 0.99399; -0.07119;,
0.05636; 0.99153; 0.11698;,
0.05636; 0.99153; 0.11698;,
0.05636; 0.99153; 0.11698;,
0.03922; 0.99668; -0.07138;,
0.03922; 0.99668; -0.07138;,
0.03922; 0.99668; -0.07138;,
0.14721; 0.98235; 0.11543;,
0.14721; 0.98235; 0.11543;,
0.14721; 0.98235; 0.11543;,
0.05673; 0.99157; 0.11651;,
0.05673; 0.99157; 0.11651;,
0.05673; 0.99157; 0.11651;,
0.04129; 0.99663; -0.07094;,
0.04129; 0.99663; -0.07094;,
0.04129; 0.99663; -0.07094;,
0.14751; 0.98237; 0.11488;,
0.14751; 0.98237; 0.11488;,
0.14751; 0.98237; 0.11488;,
0.04123; 0.99664; -0.07082;,
0.04123; 0.99664; -0.07082;,
0.04123; 0.99664; -0.07082;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
-0.21124; 0.97084; -0.11333;,
-0.21124; 0.97084; -0.11333;,
-0.21124; 0.97084; -0.11333;,
-0.21234; 0.97069; -0.11254;,
-0.21234; 0.97069; -0.11254;,
-0.21234; 0.97069; -0.11254;,
-0.07379; 0.98913; 0.12721;,
-0.07379; 0.98913; 0.12721;,
-0.07379; 0.98913; 0.12721;,
-0.07517; 0.98893; 0.12796;,
-0.07517; 0.98893; 0.12796;,
-0.07517; 0.98893; 0.12796;,
-0.13005; 0.96503; 0.22759;,
-0.13005; 0.96503; 0.22759;,
-0.13005; 0.96503; 0.22759;,
0.03963; 0.99680; -0.06936;,
0.03963; 0.99680; -0.06936;,
0.03963; 0.99680; -0.06936;,
-0.00577; 0.99654; 0.08292;,
-0.00577; 0.99654; 0.08292;,
-0.00577; 0.99654; 0.08292;,
-0.13225; 0.96501; 0.22643;,
-0.13225; 0.96501; 0.22643;,
-0.13225; 0.96501; 0.22643;,
0.08654; 0.96710; 0.23922;,
0.08654; 0.96710; 0.23922;,
0.08654; 0.96710; 0.23922;,
0.08561; 0.96728; 0.23882;,
0.08561; 0.96728; 0.23882;,
0.08561; 0.96728; 0.23882;,
-0.07031; 0.99072; 0.11632;,
-0.07031; 0.99072; 0.11632;,
-0.07031; 0.99072; 0.11632;,
-0.06668; 0.99099; 0.11615;,
-0.06668; 0.99099; 0.11615;,
-0.06668; 0.99099; 0.11615;,
0.04704; 0.95215; 0.30199;,
0.04704; 0.95215; 0.30199;,
0.04704; 0.95215; 0.30199;,
0.04190; 0.95226; 0.30241;,
0.04190; 0.95226; 0.30241;,
0.04190; 0.95226; 0.30241;,
0.06838; 0.99075; 0.11725;,
0.06838; 0.99075; 0.11725;,
0.06838; 0.99075; 0.11725;,
0.06649; 0.99111; 0.11527;,
0.06649; 0.99111; 0.11527;,
0.06649; 0.99111; 0.11527;,
0.00035; 0.97303; 0.23068;,
0.00035; 0.97303; 0.23068;,
0.00035; 0.97303; 0.23068;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
-0.00085; 0.97356; 0.22843;,
-0.00085; 0.97356; 0.22843;,
-0.00085; 0.97356; 0.22843;;

67;
3; 2, 1, 0;,
3; 1, 3, 0;,
3; 6, 5, 4;,
3; 7, 5, 6;,
3; 10, 9, 8;,
3; 13, 12, 11;,
3; 16, 15, 14;,
3; 19, 18, 17;,
3; 22, 21, 20;,
3; 25, 24, 23;,
3; 26, 24, 25;,
3; 29, 28, 27;,
3; 30, 28, 29;,
3; 33, 32, 31;,
3; 36, 35, 34;,
3; 39, 38, 37;,
3; 42, 41, 40;,
3; 45, 44, 43;,
3; 48, 47, 46;,
3; 51, 50, 49;,
3; 54, 53, 52;,
3; 57, 56, 55;,
3; 60, 59, 58;,
3; 63, 62, 61;,
3; 66, 65, 64;,
3; 69, 68, 67;,
3; 72, 71, 70;,
3; 75, 74, 73;,
3; 78, 77, 76;,
3; 81, 80, 79;,
3; 84, 83, 82;,
3; 87, 86, 85;,
3; 90, 89, 88;,
3; 93, 92, 91;,
3; 96, 95, 94;,
3; 99, 98, 97;,
3; 102, 101, 100;,
3; 105, 104, 103;,
3; 108, 107, 106;,
3; 111, 110, 109;,
3; 114, 113, 112;,
3; 117, 116, 115;,
3; 120, 119, 118;,
3; 123, 122, 121;,
3; 126, 125, 124;,
3; 129, 128, 127;,
3; 132, 131, 130;,
3; 133, 131, 132;,
3; 136, 135, 134;,
3; 139, 138, 137;,
3; 142, 141, 140;,
3; 145, 144, 143;,
3; 148, 147, 146;,
3; 151, 150, 149;,
3; 154, 153, 152;,
3; 157, 156, 155;,
3; 160, 159, 158;,
3; 163, 162, 161;,
3; 166, 165, 164;,
3; 169, 168, 167;,
3; 172, 171, 170;,
3; 175, 174, 173;,
3; 178, 177, 176;,
3; 181, 180, 179;,
3; 184, 183, 182;,
3; 187, 186, 185;,
3; 190, 189, 188;;
}
MeshTextureCoords {
191;
1.00000; 3.00000;,
0.00000; -2.00000;,
1.00000; -2.00000;,
0.00000; 3.00000;,
0.00000; 1.00000;,
0.00000; 0.00000;,
1.00000; 1.00000;,
1.00000; 0.00000;,
1.00000; -0.66064;,
0.00000; -0.82178;,
1.00000; -2.00000;,
1.00000; -2.00000;,
0.00000; -0.82178;,
0.00000; -2.00000;,
1.00000; 1.14795;,
0.00000; 4.00000;,
1.00000; -0.66064;,
1.00000; -0.66064;,
0.00000; 4.00000;,
0.00000; -0.82178;,
1.00000; 4.00000;,
0.00000; 4.00000;,
1.00000; 1.14795;,
0.00000; -1.00000;,
1.00000; -1.00000;,
0.00000; 5.00000;,
1.00000; 5.00000;,
1.00000; 5.00000;,
0.00000; 5.00000;,
1.00000; 0.00000;,
0.00000; 0.00000;,
0.00000; 1.00000;,
0.00000; -1.00000;,
1.00000; 1.00000;,
1.00000; 1.00000;,
0.00000; -1.00000;,
1.00000; -1.00000;,
0.00000; 3.00000;,
0.00000; -1.00000;,
1.00000; 3.00000;,
1.00000; 3.00000;,
0.00000; -1.00000;,
1.00000; -0.39502;,
1.00000; -0.39502;,
0.00000; -1.00000;,
1.00000; -1.00000;,
0.00000; 4.56592;,
1.00000; 4.17920;,
0.00000; 8.00000;,
0.00000; 8.00000;,
1.00000; 4.17920;,
1.00000; 8.00000;,
0.00000; 1.69775;,
1.00000; 2.50049;,
0.00000; 4.56592;,
0.00000; 4.56592;,
1.00000; 2.50049;,
1.00000; 4.17920;,
0.00000; -2.15918;,
1.00000; -3.25879;,
0.00000; 1.69775;,
0.00000; 1.69775;,
1.00000; -3.25879;,
1.00000; 2.50049;,
0.00000; -2.15918;,
0.00000; -7.00000;,
1.00000; -3.25879;,
1.00000; -3.25879;,
0.00000; -7.00000;,
1.00000; -7.00000;,
0.00000; 1.00000;,
0.00000; -1.00000;,
1.00000; 1.00000;,
1.00000; 1.00000;,
0.00000; -1.00000;,
1.00000; -1.00000;,
0.00000; 2.00244;,
1.00000; 1.12500;,
0.00000; 4.00000;,
0.00000; 4.00000;,
1.00000; 1.12500;,
1.00000; 4.00000;,
0.00000; 2.00244;,
0.00000; -1.00000;,
1.00000; 1.12500;,
1.00000; 1.12500;,
0.00000; -1.00000;,
1.00000; -1.00000;,
0.00000; 1.00000;,
0.00000; -4.00000;,
1.00000; 0.00000;,
1.00000; 0.00000;,
0.00000; -4.00000;,
1.00000; -4.00000;,
0.00000; 6.00000;,
0.00000; 1.00000;,
1.00000; 6.00000;,
1.00000; 6.00000;,
0.00000; 1.00000;,
1.00000; 2.00000;,
0.00000; 1.00000;,
1.00000; 0.00000;,
1.00000; 2.00000;,
1.00000; 1.69580;,
0.00000; -2.00000;,
1.00000; -2.00000;,
0.00000; 3.00000;,
1.00000; 1.69580;,
1.00000; 3.00000;,
0.00000; 5.00000;,
1.00000; 2.19287;,
1.00000; 5.00000;,
0.00000; 3.00000;,
0.00000; -2.00000;,
1.00000; 1.69580;,
0.00000; 0.83984;,
1.00000; -1.24707;,
1.00000; 2.19287;,
0.00000; 0.83984;,
1.00000; 2.19287;,
0.00000; 5.00000;,
0.00000; -1.05078;,
1.00000; -3.00000;,
1.00000; -1.24707;,
0.00000; -1.05078;,
1.00000; -1.24707;,
0.00000; 0.83984;,
0.00000; -3.00000;,
1.00000; -3.00000;,
0.00000; -1.05078;,
0.00000; -0.51270;,
0.00000; -4.00000;,
1.00000; -1.43945;,
1.00000; -4.00000;,
0.00000; 2.31738;,
1.00000; 2.85352;,
0.00000; 5.00000;,
0.00000; 5.00000;,
1.00000; 2.85352;,
1.00000; 5.00000;,
0.00000; -0.51270;,
1.00000; -1.43945;,
0.00000; 2.31738;,
0.00000; 2.31738;,
1.00000; -1.43945;,
1.00000; 2.85352;,
0.00000; 3.78467;,
1.00000; -0.42773;,
1.00000; 4.00000;,
0.00000; 3.78467;,
1.00000; 4.00000;,
0.00000; 4.00000;,
1.00000; -4.70166;,
0.00000; -6.00000;,
1.00000; -6.00000;,
0.00000; 1.14355;,
1.00000; -0.42773;,
0.00000; 3.78467;,
0.00000; 0.50000;,
0.00000; -6.00000;,
1.00000; 0.50000;,
1.00000; 0.50000;,
0.00000; -6.00000;,
1.00000; -4.70166;,
0.00000; 3.04004;,
1.00000; 4.35986;,
0.00000; 7.00000;,
0.00000; 7.00000;,
1.00000; 4.35986;,
1.00000; 7.00000;,
0.00000; 0.50000;,
1.00000; 0.50000;,
0.00000; 3.04004;,
0.00000; 3.04004;,
1.00000; 0.50000;,
1.00000; 4.35986;,
0.00000; 2.00000;,
0.00000; -2.00000;,
1.00000; 2.00000;,
1.00000; 2.00000;,
0.00000; -2.00000;,
1.00000; -0.08154;,
1.00000; -0.42773;,
0.00000; -2.00000;,
1.00000; -2.00000;,
1.00000; -0.08154;,
0.00000; -2.00000;,
1.00000; -2.00000;,
0.00000; 1.14355;,
0.00000; -2.00000;,
1.00000; -0.42773;;
}

}

}

Frame frmpart11_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part11 {
52;
-19.60500; -3.27000; -0.24500;,
-18.40500; -3.27000; -0.24500;,
-19.60500; -3.27000; -1.44500;,
-18.40500; -3.27000; -1.44500;,
-17.25500; -1.20000; -7.64000;,
-17.86000; -1.75500; -6.51000;,
-16.17000; -1.18000; -7.06000;,
-16.17000; -1.18000; -7.06000;,
-17.86000; -1.75500; -6.51000;,
-16.79500; -1.75000; -5.91500;,
-25.78500; -3.27000; 7.15500;,
-24.80500; -3.27000; 6.09000;,
-25.76500; -3.27000; 6.03500;,
-24.80500; -3.27000; 7.14000;,
-11.04500; -3.01000; 24.75000;,
-10.01000; -3.15000; 25.32000;,
-10.48500; -2.92500; 23.71500;,
-10.48500; -2.92500; 23.71500;,
-10.01000; -3.15000; 25.32000;,
-9.45000; -3.06500; 24.28000;,
1.27500; -1.67500; -16.12000;,
0.15500; -1.52000; -15.71500;,
1.70500; -1.44000; -15.02500;,
1.70500; -1.44000; -15.02500;,
0.15500; -1.52000; -15.71500;,
0.59000; -1.28500; -14.62000;,
20.00000; -0.65500; -23.78500;,
20.99000; -0.50500; -23.12000;,
20.67500; -0.77500; -24.77000;,
21.66500; -0.62500; -24.10500;,
30.54000; -1.34000; -1.64500;,
31.13000; -1.48500; -0.49500;,
31.69000; -1.17500; -2.21000;,
31.69000; -1.17500; -2.21000;,
31.13000; -1.48500; -0.49500;,
32.28500; -1.32000; -1.06000;,
5.41000; -0.74000; -12.22000;,
5.54000; -0.36500; -11.29500;,
6.66500; -0.53000; -12.37500;,
6.66500; -0.53000; -12.37500;,
5.54000; -0.36500; -11.29500;,
6.82000; -0.08500; -11.29500;,
23.18000; 1.05500; -14.27000;,
22.54000; 1.23000; -13.15500;,
24.26000; 1.05500; -13.64500;,
24.26000; 1.05500; -13.64500;,
22.54000; 1.23000; -13.15500;,
23.62000; 1.23000; -12.53500;,
6.44000; -3.27000; 16.86000;,
5.79500; -3.27000; 17.87500;,
7.45000; -3.27000; 17.50500;,
6.80500; -3.27000; 18.52000;;

20;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 9, 8, 7;,
3; 12, 11, 10;,
3; 10, 11, 13;,
3; 16, 15, 14;,
3; 19, 18, 17;,
3; 22, 21, 20;,
3; 25, 24, 23;,
3; 28, 27, 26;,
3; 29, 27, 28;,
3; 32, 31, 30;,
3; 35, 34, 33;,
3; 38, 37, 36;,
3; 41, 40, 39;,
3; 44, 43, 42;,
3; 47, 46, 45;,
3; 50, 49, 48;,
3; 51, 49, 50;;

MeshMaterialList {
1;
20;
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0;
Material mat11 {
  0.687500; 0.687500; 0.687500; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "25E8E1F4_c.bmp";
  }
  DiffuseTextureFileName  {
     "25E8E1F4_c.bmp";
  }
  FS10Material {
    0.687500; 0.687500; 0.687500; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "25E8E1F4_c.bmp";
    }
  }
}
}

MeshNormals {
52;
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
-0.20045; 0.91757; 0.34334;,
-0.20045; 0.91757; 0.34334;,
-0.20045; 0.91757; 0.34334;,
-0.19859; 0.91631; 0.34776;,
-0.19859; 0.91631; 0.34776;,
-0.19859; 0.91631; 0.34776;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.06871; 0.99057; 0.11853;,
0.06871; 0.99057; 0.11853;,
0.06871; 0.99057; 0.11853;,
0.06939; 0.99055; 0.11832;,
0.06939; 0.99055; 0.11832;,
0.06939; 0.99055; 0.11832;,
0.05174; 0.97206; -0.22894;,
0.05174; 0.97206; -0.22894;,
0.05174; 0.97206; -0.22894;,
0.05187; 0.97199; -0.22921;,
0.05187; 0.97199; -0.22921;,
0.05187; 0.97199; -0.22921;,
-0.04710; 0.98717; -0.15254;,
-0.04710; 0.98717; -0.15254;,
-0.04710; 0.98717; -0.15254;,
-0.04710; 0.98717; -0.15254;,
-0.06417; 0.98548; 0.15718;,
-0.06417; 0.98548; 0.15718;,
-0.06417; 0.98548; 0.15718;,
-0.06384; 0.98549; 0.15729;,
-0.06384; 0.98549; 0.15729;,
-0.06384; 0.98549; 0.15729;,
-0.19617; 0.91802; -0.34460;,
-0.19617; 0.91802; -0.34460;,
-0.19617; 0.91802; -0.34460;,
-0.20030; 0.91564; -0.34853;,
-0.20030; 0.91564; -0.34853;,
-0.20030; 0.91564; -0.34853;,
0.06756; 0.99086; -0.11674;,
0.06756; 0.99086; -0.11674;,
0.06756; 0.99086; -0.11674;,
0.06737; 0.99080; -0.11736;,
0.06737; 0.99080; -0.11736;,
0.06737; 0.99080; -0.11736;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;;

20;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 9, 8, 7;,
3; 12, 11, 10;,
3; 10, 11, 13;,
3; 16, 15, 14;,
3; 19, 18, 17;,
3; 22, 21, 20;,
3; 25, 24, 23;,
3; 28, 27, 26;,
3; 29, 27, 28;,
3; 32, 31, 30;,
3; 35, 34, 33;,
3; 38, 37, 36;,
3; 41, 40, 39;,
3; 44, 43, 42;,
3; 47, 46, 45;,
3; 50, 49, 48;,
3; 51, 49, 50;;
}
MeshTextureCoords {
52;
0.00000; 0.00000;,
1.00000; 0.00000;,
0.00000; 1.00000;,
1.00000; 1.00000;,
0.00000; 0.00000;,
0.00000; 1.00000;,
1.00000; 0.00000;,
1.00000; 0.00000;,
0.00000; 1.00000;,
1.00000; 1.00000;,
0.00000; 1.00000;,
1.00000; 0.00000;,
1.00000; 1.00000;,
0.00000; 0.00000;,
0.00000; 0.00000;,
0.00000; 1.00000;,
1.00000; 0.00000;,
1.00000; 0.00000;,
0.00000; 1.00000;,
1.00000; 1.00000;,
0.00000; 1.00000;,
0.00000; 0.00000;,
1.00000; 1.00000;,
1.00000; 1.00000;,
0.00000; 0.00000;,
1.00000; 0.00000;,
0.00000; 1.00000;,
0.00000; 0.00000;,
1.00000; 1.00000;,
1.00000; 0.00000;,
0.00000; 0.00000;,
0.00000; 1.00000;,
1.00000; 0.00000;,
1.00000; 0.00000;,
0.00000; 1.00000;,
1.00000; 1.00000;,
0.00000; 1.00000;,
0.00000; 0.00000;,
1.00000; 1.00000;,
1.00000; 1.00000;,
0.00000; 0.00000;,
1.00000; 0.00000;,
0.00000; 1.00000;,
0.00000; 0.00000;,
1.00000; 1.00000;,
1.00000; 1.00000;,
0.00000; 0.00000;,
1.00000; 0.00000;,
0.00000; 0.00000;,
0.00000; 1.00000;,
1.00000; 0.00000;,
1.00000; 1.00000;;
}

}

}

Frame frmpart12_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part12 {
10;
-19.60500; -3.28000; 8.15500;,
-18.40500; -3.28000; 8.15500;,
-19.60500; -3.28000; 6.95500;,
-18.40500; -3.28000; 6.95500;,
14.56500; -1.39000; 6.05000;,
13.72000; -1.29500; 6.89500;,
15.41500; -1.36500; 6.90000;,
15.41500; -1.36500; 6.90000;,
13.72000; -1.29500; 6.89500;,
14.57000; -1.27000; 7.74000;;

4;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 9, 8, 7;;

MeshMaterialList {
1;
4;
0,
0,
0,
0;
Material mat12 {
  0.687500; 0.687500; 0.687500; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "6D92D9A3_c.bmp";
  }
  DiffuseTextureFileName  {
     "6D92D9A3_c.bmp";
  }
  FS10Material {
    0.687500; 0.687500; 0.687500; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "6D92D9A3_c.bmp";
    }
  }
}
}

MeshNormals {
10;
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.04137; 0.99664; -0.07068;,
0.04137; 0.99664; -0.07068;,
0.04137; 0.99664; -0.07068;,
0.04137; 0.99661; -0.07110;,
0.04137; 0.99661; -0.07110;,
0.04137; 0.99661; -0.07110;;

4;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 9, 8, 7;;
}
MeshTextureCoords {
10;
0.00000; 0.00000;,
1.00000; 0.00000;,
0.00000; 1.00000;,
1.00000; 1.00000;,
0.00000; 1.00000;,
0.00000; 0.00000;,
1.00000; 1.00000;,
1.00000; 1.00000;,
0.00000; 0.00000;,
1.00000; 0.00000;;
}

}

}

Frame frmpart13_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part13 {
78;
18.07500; -1.08000; -34.47000;,
14.34000; -1.08000; -33.39500;,
15.00500; -1.08000; -31.39500;,
17.59500; -1.08000; -36.65000;,
41.22000; -1.08000; -17.32500;,
38.54000; -1.08000; -18.67500;,
41.19500; -1.08000; -16.31000;,
38.17000; -1.08000; -17.18500;,
43.51500; -1.08000; -18.10000;,
41.22000; -1.08000; -17.32500;,
43.86000; -1.08000; -17.09500;,
41.19500; -1.08000; -16.31000;,
36.20500; -1.08000; -16.08000;,
38.17000; -1.08000; -17.18500;,
36.88500; -1.08000; -17.71500;,
38.54000; -1.08000; -18.67500;,
31.12000; -1.08000; -26.35000;,
34.49500; -1.08000; -25.23000;,
31.96500; -1.08000; -27.71000;,
35.31500; -1.08000; -16.81000;,
25.76000; -1.08000; -28.29500;,
27.10000; -1.08000; -29.07000;,
32.91500; -1.08000; -24.54500;,
36.31500; -1.08000; -13.12500;,
35.31500; -1.08000; -16.81000;,
34.69500; -1.08000; -12.32000;,
20.62000; -1.08000; -31.92000;,
27.10000; -1.08000; -29.07000;,
21.47000; -1.08000; -32.77000;,
36.20500; -1.08000; -16.08000;,
18.07500; -1.08000; -34.47000;,
25.76000; -1.08000; -28.29500;,
44.20000; -1.08000; -21.29000;,
43.51500; -1.08000; -18.10000;,
43.86000; -1.08000; -17.09500;,
17.59500; -1.08000; -36.65000;,
34.69500; -1.08000; -12.32000;,
34.77500; -1.08000; -9.93000;,
36.31500; -1.08000; -13.12500;,
37.76000; -1.08000; -11.92000;,
38.80500; -1.08000; -10.28000;,
35.23500; -1.08000; -8.63000;,
7.74000; -1.08000; -33.39500;,
6.74000; -1.08000; -32.39500;,
15.00500; -1.08000; -31.39500;,
37.40500; -1.08000; -8.08000;,
6.61000; -1.08000; -31.39500;,
14.34000; -1.08000; -33.39500;,
3.34500; -1.08000; -35.79000;,
2.78000; -1.08000; -35.22500;,
6.74000; -1.08000; -32.39500;,
6.61000; -1.08000; -31.39500;,
1.93000; -1.08000; -37.20500;,
1.36500; -1.08000; -36.64000;,
3.34500; -1.08000; -35.79000;,
2.78000; -1.08000; -35.22500;,
-2.87500; -2.35500; -38.62000;,
-4.01000; -2.35500; -39.75000;,
-5.14000; -2.35500; -36.35500;,
-6.27000; -2.35500; -37.48500;,
-5.14000; -2.35500; -36.35500;,
-6.27000; -2.35500; -37.48500;,
-11.04500; -2.35500; -32.54501;,
-11.04500; -2.35500; -34.62500;,
-11.04500; -2.35500; -32.54501;,
-11.04500; -2.35500; -34.62500;,
-18.40500; -2.35500; -31.62500;,
-18.40500; -2.35500; -33.62500;,
-3.72500; -2.35500; -40.59500;,
-4.01000; -2.35500; -39.75000;,
-1.96000; -2.35500; -38.83500;,
-2.87500; -2.35500; -38.62000;,
-18.40500; -2.35500; -33.62500;,
-20.78500; -2.35500; -33.33001;,
-18.40500; -2.35500; -31.62500;,
-20.78500; -2.35500; -31.33000;,
34.93000; -1.08000; -22.11500;,
33.45500; -1.08000; -21.58500;;

46;
3; 2, 1, 0;,
3; 0, 1, 3;,
3; 6, 5, 4;,
3; 7, 5, 6;,
3; 10, 9, 8;,
3; 11, 9, 10;,
3; 14, 13, 12;,
3; 13, 14, 15;,
3; 18, 17, 16;,
3; 19, 14, 12;,
3; 21, 18, 20;,
3; 16, 17, 22;,
3; 25, 24, 23;,
3; 20, 18, 16;,
3; 28, 27, 26;,
3; 23, 24, 29;,
3; 30, 28, 26;,
3; 26, 27, 31;,
3; 34, 33, 32;,
3; 35, 28, 30;,
3; 38, 37, 36;,
3; 39, 37, 38;,
3; 40, 37, 39;,
3; 41, 37, 40;,
3; 44, 43, 42;,
3; 45, 41, 40;,
3; 46, 43, 44;,
3; 47, 44, 42;,
3; 50, 49, 48;,
3; 51, 49, 50;,
3; 54, 53, 52;,
3; 55, 53, 54;,
3; 58, 57, 56;,
3; 59, 57, 58;,
3; 62, 61, 60;,
3; 63, 61, 62;,
3; 66, 65, 64;,
3; 67, 65, 66;,
3; 70, 69, 68;,
3; 71, 69, 70;,
3; 74, 73, 72;,
3; 75, 73, 74;,
3; 77, 17, 76;,
3; 22, 17, 77;,
3; 15, 77, 76;,
3; 14, 77, 15;;

MeshMaterialList {
1;
46;
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0;
Material mat13 {
  0.687500; 0.687500; 0.687500; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "190B8B20_c.bmp";
  }
  DiffuseTextureFileName  {
     "190B8B20_c.bmp";
  }
  FS10Material {
    0.687500; 0.687500; 0.687500; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "190B8B20_c.bmp";
    }
  }
}
}

MeshNormals {
78;
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;;

46;
3; 2, 1, 0;,
3; 0, 1, 3;,
3; 6, 5, 4;,
3; 7, 5, 6;,
3; 10, 9, 8;,
3; 11, 9, 10;,
3; 14, 13, 12;,
3; 13, 14, 15;,
3; 18, 17, 16;,
3; 19, 14, 12;,
3; 21, 18, 20;,
3; 16, 17, 22;,
3; 25, 24, 23;,
3; 20, 18, 16;,
3; 28, 27, 26;,
3; 23, 24, 29;,
3; 30, 28, 26;,
3; 26, 27, 31;,
3; 34, 33, 32;,
3; 35, 28, 30;,
3; 38, 37, 36;,
3; 39, 37, 38;,
3; 40, 37, 39;,
3; 41, 37, 40;,
3; 44, 43, 42;,
3; 45, 41, 40;,
3; 46, 43, 44;,
3; 47, 44, 42;,
3; 50, 49, 48;,
3; 51, 49, 50;,
3; 54, 53, 52;,
3; 55, 53, 54;,
3; 58, 57, 56;,
3; 59, 57, 58;,
3; 62, 61, 60;,
3; 63, 61, 62;,
3; 66, 65, 64;,
3; 67, 65, 66;,
3; 70, 69, 68;,
3; 71, 69, 70;,
3; 74, 73, 72;,
3; 75, 73, 74;,
3; 77, 17, 76;,
3; 22, 17, 77;,
3; 15, 77, 76;,
3; 14, 77, 15;;
}
MeshTextureCoords {
78;
1.75000; 3.62500;,
-2.25000; -0.42188;,
1.75000; -0.42188;,
-2.25000; 3.26953;,
-2.25000; 3.57812;,
-2.25000; -2.42188;,
1.75000; 3.57812;,
1.75000; -2.42188;,
-2.25000; 5.57812;,
-2.25000; -0.42188;,
1.75000; 5.57812;,
1.75000; -0.42188;,
1.75000; 5.57812;,
1.75000; 11.57812;,
-0.25000; 9.57812;,
-2.25000; 11.57812;,
1.00000; -4.17188;,
-2.25000; -0.42188;,
-2.25000; -5.22266;,
-2.25000; 5.57812;,
1.75000; -12.42188;,
-2.25000; -12.42188;,
0.75000; -1.42188;,
1.75000; -2.42188;,
-2.25000; 3.57812;,
-2.25000; -2.42188;,
1.75000; -4.42188;,
-2.25000; 9.57812;,
-2.25000; -4.42188;,
1.75000; 3.57812;,
1.75000; -8.42188;,
1.75000; 9.57812;,
1.75000; 5.57812;,
-2.25000; -0.42188;,
1.75000; -0.42188;,
-2.25000; -8.42188;,
-2.25000; 1.57812;,
-4.60938; -2.09766;,
1.75000; 1.57812;,
8.98828; -0.67773;,
10.30859; -3.58398;,
-2.64844; -5.08203;,
-4.25000; 0.57812;,
-2.25000; -0.42188;,
1.75000; 7.57812;,
4.09766; -6.59570;,
1.75000; -0.42188;,
-2.25000; 7.57812;,
-2.25000; -0.42188;,
1.75000; -0.42188;,
-2.25000; 3.57812;,
1.75000; 3.57812;,
-2.25000; -0.42188;,
1.75000; -0.42188;,
-2.25000; 1.57812;,
1.75000; 1.57812;,
1.75000; 3.57812;,
-2.25000; 3.57812;,
1.75000; -0.42188;,
-2.25000; -0.42188;,
1.75000; 7.57812;,
-2.25000; 7.57812;,
1.75000; -0.42188;,
-2.25000; -0.42188;,
1.75000; 5.57812;,
-2.25000; 5.57812;,
1.75000; -4.42188;,
-2.25000; -4.42188;,
-3.25000; 1.07812;,
-2.25000; -0.42188;,
2.75000; 1.07812;,
1.75000; -0.42188;,
-2.25000; 1.57812;,
-2.25000; -0.42188;,
1.75000; 1.57812;,
1.75000; -0.42188;,
-2.25000; 3.57812;,
0.41797; 2.24414;;
}

}

}

Frame frmpart14_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part14 {
227;
-18.40500; -2.28000; -31.62500;,
-18.40500; -2.28000; -33.62500;,
-18.40500; -1.88000; -31.62500;,
-18.40500; -1.88000; -33.62500;,
-18.40500; -2.28000; -33.62500;,
-18.12000; -2.28000; -33.91000;,
-18.40500; -1.68000; -33.62500;,
-18.12000; -1.68000; -33.91000;,
-18.12000; -2.28000; -31.34500;,
-18.40500; -2.28000; -31.62500;,
-18.12000; -1.68000; -31.34500;,
-18.40500; -1.68000; -31.62500;,
-18.12000; -1.68000; -33.91000;,
-18.12000; -2.28000; -33.91000;,
-18.40500; -1.68000; -34.19500;,
-18.40500; -2.28000; -34.19500;,
-18.40500; -1.68000; -31.06000;,
-18.40500; -2.28000; -31.06000;,
-18.12000; -1.68000; -31.34500;,
-18.12000; -2.28000; -31.34500;,
0.80000; -0.68000; -33.81000;,
1.93000; -0.68000; -34.94000;,
0.80000; -2.28000; -33.81000;,
1.93000; -2.28000; -34.94000;,
0.23500; 1.62000; -33.24500;,
0.23500; -0.78000; -33.24500;,
0.80000; 1.62000; -32.68000;,
0.80000; -0.78000; -32.68000;,
0.80000; -0.68000; -33.81000;,
0.80000; -2.28000; -33.81000;,
0.23500; -0.78000; -33.24500;,
0.23500; -2.28000; -33.24500;,
0.80000; -0.68000; -33.81000;,
0.23500; -0.78000; -33.24500;,
0.80000; 1.62000; -33.81000;,
0.23500; 1.62000; -33.24500;,
-1.96000; -2.28000; -38.83500;,
1.93000; -2.28000; -34.94000;,
-2.59500; -0.88000; -39.46500;,
-2.03000; -0.88000; -40.03000;,
-2.59500; -0.88000; -39.46500;,
-2.59500; -0.68000; -39.46500;,
-1.96000; -2.28000; -38.83500;,
-2.59500; -0.88000; -39.46500;,
-3.72500; -2.28000; -40.59500;,
-3.72500; -2.28000; -40.59500;,
-2.59500; -0.88000; -39.46500;,
-3.16000; -0.88000; -40.03000;,
-2.03000; -0.88000; -40.03000;,
-3.16000; -0.68000; -40.03000;,
-2.59500; -0.88000; -40.59500;,
-2.59500; -0.88000; -40.59500;,
-3.16000; -0.68000; -40.03000;,
-3.16000; -0.88000; -40.03000;,
1.93000; -0.68000; -34.94000;,
-2.59500; -0.68000; -39.46500;,
-2.59500; -0.68000; -39.46500;,
-3.72500; -0.68000; -40.59500;,
1.93000; -2.28000; -34.94000;,
-3.16000; -0.68000; -40.03000;,
17.93500; -0.90500; -34.32500;,
17.93500; -0.78000; -34.32500;,
17.45000; -0.90500; -34.81000;,
10.14000; -0.78000; -34.99500;,
10.14000; -0.78000; -33.49500;,
11.94000; -0.78000; -34.99500;,
11.94000; -0.78000; -33.49500;,
6.61000; -1.48000; -31.39500;,
10.14000; -1.48000; -31.39500;,
10.14000; -1.48000; -31.59500;,
15.00500; -1.48000; -31.39500;,
11.94000; -1.48000; -31.59500;,
11.94000; -1.48000; -31.39500;,
16.60500; -1.48000; -35.66000;,
14.34000; -1.48000; -33.39500;,
17.93500; -1.48000; -34.32500;,
17.65000; -1.00500; -34.04500;,
17.17000; -1.00500; -34.52500;,
17.37000; -1.00500; -33.76000;,
16.88500; -1.00500; -34.24500;,
17.93500; -0.90500; -34.32500;,
17.45000; -0.90500; -34.81000;,
17.65000; -0.90500; -34.04500;,
17.17000; -0.90500; -34.52500;,
16.60500; -0.68000; -35.66000;,
17.45000; -0.90500; -34.81000;,
17.93500; -0.78000; -34.32500;,
3.34500; -1.48000; -35.79000;,
2.78000; -1.48000; -35.22500;,
6.74000; -1.48000; -32.39500;,
13.74000; -0.78000; -37.99500;,
17.45000; -0.90500; -34.81000;,
16.60500; -0.68000; -35.66000;,
16.60500; -0.90500; -35.66000;,
8.34000; -0.78000; -37.99500;,
8.34000; -0.78000; -34.99500;,
17.93500; -0.78000; -34.32500;,
16.60500; 0.92000; -35.66000;,
16.60500; -0.68000; -35.66000;,
13.74000; -0.78000; -34.99500;,
16.32000; 1.82000; -35.94000;,
16.60500; 0.92000; -35.66000;,
17.93500; 1.82000; -34.32500;,
17.93500; 1.82000; -34.32500;,
1.36500; 1.62000; -33.24500;,
1.36500; -0.78000; -33.24500;,
1.08500; -0.68000; -33.52500;,
16.32000; 0.92000; -35.94000;,
16.60500; 0.92000; -35.66000;,
16.32000; 1.82000; -35.94000;,
1.36500; 1.62000; -33.24500;,
1.08500; 0.92000; -33.52500;,
0.80000; 1.62000; -33.81000;,
1.08500; 0.92000; -33.52500;,
1.08500; 0.92000; -33.52500;,
1.08500; -0.68000; -33.52500;,
0.80000; 1.62000; -33.81000;,
0.80000; -0.78000; -33.81000;,
1.08500; -0.78000; -33.52500;,
1.08500; -0.78000; -33.52500;,
0.80000; 1.62000; -32.68000;,
0.80000; -0.78000; -32.68000;,
1.36500; 1.62000; -33.24500;,
1.36500; -0.78000; -33.24500;,
17.59500; -0.90500; -36.65000;,
18.92500; -0.90500; -35.31500;,
16.60500; -0.90500; -35.66000;,
17.93500; -0.90500; -34.32500;,
17.59500; -1.48000; -36.65000;,
18.92500; -1.48000; -35.31500;,
1.36500; -1.48000; -36.64000;,
1.93000; -1.48000; -37.20500;,
2.78000; -1.00500; -35.22500;,
3.34500; -1.00500; -35.79000;,
1.93000; -1.48000; -37.20500;,
1.36500; -1.48000; -36.64000;,
7.74000; -1.48000; -33.39500;,
-8.49500; 2.58500; 1.00500;,
-8.44500; -0.21500; 0.95500;,
-8.89500; 2.58500; 1.00500;,
-8.94500; -0.21500; 0.95500;,
-8.44500; -0.21500; 1.45500;,
-8.44500; -0.21500; 0.95500;,
-8.49500; 2.58500; 1.40500;,
-8.49500; 2.58500; 1.00500;,
-8.89500; 2.58500; 1.40500;,
-8.89500; 2.58500; 1.00500;,
-8.94500; -0.21500; 1.45500;,
-8.94500; -0.21500; 0.95500;,
-8.89500; 2.58500; 1.40500;,
-8.94500; -0.21500; 1.45500;,
-8.49500; 2.58500; 1.40500;,
-8.44500; -0.21500; 1.45500;,
22.28000; 4.34000; -43.25000;,
22.40500; 3.54500; -42.95000;,
22.71000; 4.34000; -44.29000;,
22.71000; 4.34000; -44.29000;,
22.40500; 3.54500; -42.95000;,
23.01500; 3.54500; -44.42000;,
21.67000; 4.34000; -44.72000;,
21.54500; 3.54500; -45.02500;,
21.24000; 4.34000; -43.68500;,
21.24000; 4.34000; -43.68500;,
21.54500; 3.54500; -45.02500;,
20.93500; 3.54500; -43.55500;,
21.24000; 4.34000; -43.68500;,
20.93500; 3.54500; -43.55500;,
22.28000; 4.34000; -43.25000;,
22.28000; 4.34000; -43.25000;,
20.93500; 3.54500; -43.55500;,
22.40500; 3.54500; -42.95000;,
21.97500; 4.67000; -43.98500;,
21.67000; 4.34000; -44.72000;,
21.24000; 4.34000; -43.68500;,
21.97500; 4.67000; -43.98500;,
22.28000; 4.34000; -43.25000;,
22.71000; 4.34000; -44.29000;,
21.97500; 4.67000; -43.98500;,
21.24000; 4.34000; -43.68500;,
22.28000; 4.34000; -43.25000;,
21.97500; 4.57000; -43.84000;,
22.10500; 4.57000; -44.06000;,
21.97500; 6.25500; -43.98500;,
21.84500; 4.57000; -44.06000;,
21.97500; 4.57000; -43.84000;,
21.97500; 6.25500; -43.98500;,
15.61500; 3.94500; -43.98500;,
15.91500; 2.59500; -43.63000;,
15.91500; 2.59500; -44.34500;,
15.61500; 3.94500; -43.98500;,
15.32000; 2.59500; -43.63000;,
15.91500; 2.59500; -43.63000;,
15.61500; 3.94500; -43.98500;,
15.32000; 2.59500; -44.34500;,
15.32000; 2.59500; -43.63000;,
17.73500; -0.68000; -36.79000;,
17.73500; 0.92000; -36.79000;,
19.06500; -0.78000; -35.46000;,
19.06500; 1.82000; -35.46000;,
17.93500; -0.78000; -34.32500;,
19.06500; -0.78000; -35.46000;,
17.93500; 1.82000; -34.32500;,
19.06500; 1.82000; -35.46000;,
18.92500; -1.00500; -35.31500;,
18.07500; -1.00500; -34.47000;,
19.12500; -1.00500; -35.11500;,
18.27500; -1.00500; -34.27000;,
19.06500; 1.82000; -35.46000;,
17.73500; 0.92000; -36.79000;,
17.45000; 1.82000; -37.07000;,
17.45000; 1.82000; -37.07000;,
17.73500; 0.92000; -36.79000;,
17.45000; 0.92000; -37.07000;,
20.84500; 0.92000; -40.46500;,
21.13000; 0.92000; -40.18500;,
20.84500; 1.82000; -40.46500;,
20.84500; 1.82000; -40.46500;,
21.13000; 0.92000; -40.18500;,
21.69500; 1.82000; -39.62000;,
21.69500; 1.82000; -39.62000;,
21.13000; 0.92000; -40.18500;,
21.69500; -0.68000; -39.62000;,
21.13000; -0.68000; -40.18500;,
21.69500; -0.68000; -39.62000;,
26.22000; -0.68000; -44.14500;,
21.69500; 1.82000; -39.62000;,
26.22000; 1.82000; -44.14500;;

110;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 7, 5, 6;,
3; 10, 9, 8;,
3; 11, 9, 10;,
3; 14, 13, 12;,
3; 15, 13, 14;,
3; 18, 17, 16;,
3; 19, 17, 18;,
3; 22, 21, 20;,
3; 23, 21, 22;,
3; 26, 25, 24;,
3; 27, 25, 26;,
3; 30, 29, 28;,
3; 31, 29, 30;,
3; 34, 33, 32;,
3; 33, 34, 35;,
3; 38, 37, 36;,
3; 41, 40, 39;,
3; 44, 43, 42;,
3; 47, 46, 45;,
3; 50, 49, 48;,
3; 53, 52, 51;,
3; 55, 54, 46;,
3; 48, 49, 56;,
3; 45, 57, 47;,
3; 54, 58, 46;,
3; 47, 57, 59;,
3; 62, 61, 60;,
3; 65, 64, 63;,
3; 66, 64, 65;,
3; 69, 68, 67;,
3; 72, 71, 70;,
3; 75, 74, 73;,
3; 70, 74, 75;,
3; 78, 77, 76;,
3; 79, 77, 78;,
3; 82, 81, 80;,
3; 83, 81, 82;,
3; 86, 85, 84;,
3; 89, 88, 87;,
3; 67, 88, 89;,
3; 65, 63, 90;,
3; 93, 92, 91;,
3; 63, 95, 94;,
3; 90, 63, 94;,
3; 98, 97, 96;,
3; 99, 65, 90;,
3; 102, 101, 100;,
3; 96, 97, 103;,
3; 106, 105, 104;,
3; 109, 108, 107;,
3; 112, 111, 110;,
3; 113, 106, 104;,
3; 116, 115, 114;,
3; 117, 115, 116;,
3; 115, 117, 118;,
3; 119, 105, 106;,
3; 122, 121, 120;,
3; 123, 121, 122;,
3; 126, 125, 124;,
3; 127, 125, 126;,
3; 129, 73, 128;,
3; 75, 73, 129;,
3; 132, 131, 130;,
3; 133, 131, 132;,
3; 87, 135, 134;,
3; 88, 135, 87;,
3; 69, 67, 89;,
3; 136, 69, 89;,
3; 136, 71, 69;,
3; 74, 71, 136;,
3; 74, 70, 71;,
3; 139, 138, 137;,
3; 140, 138, 139;,
3; 143, 142, 141;,
3; 144, 142, 143;,
3; 147, 146, 145;,
3; 148, 146, 147;,
3; 151, 150, 149;,
3; 152, 150, 151;,
3; 155, 154, 153;,
3; 158, 157, 156;,
3; 161, 160, 159;,
3; 164, 163, 162;,
3; 167, 166, 165;,
3; 170, 169, 168;,
3; 173, 172, 171;,
3; 176, 175, 174;,
3; 179, 178, 177;,
3; 182, 181, 180;,
3; 185, 184, 183;,
3; 188, 187, 186;,
3; 191, 190, 189;,
3; 194, 193, 192;,
3; 197, 196, 195;,
3; 198, 196, 197;,
3; 201, 200, 199;,
3; 202, 200, 201;,
3; 205, 204, 203;,
3; 206, 204, 205;,
3; 209, 208, 207;,
3; 212, 211, 210;,
3; 215, 214, 213;,
3; 218, 217, 216;,
3; 221, 220, 219;,
3; 222, 220, 221;,
3; 225, 224, 223;,
3; 226, 224, 225;;

MeshMaterialList {
1;
110;
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0;
Material mat14 {
  0.687500; 0.687500; 0.687500; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "4C9D67D9_c.bmp";
  }
  DiffuseTextureFileName  {
     "4C9D67D9_c.bmp";
  }
  FS10Material {
    0.687500; 0.687500; 0.687500; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "4C9D67D9_c.bmp";
    }
  }
}
}

MeshNormals {
227;
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
0.70710; 0.00000; 0.70711;,
0.70710; 0.00000; 0.70711;,
0.70710; 0.00000; 0.70711;,
0.70710; 0.00000; 0.70711;,
0.70082; 0.00000; -0.71334;,
0.70082; 0.00000; -0.71334;,
0.70082; 0.00000; -0.71334;,
0.70082; 0.00000; -0.71334;,
0.70710; 0.00000; -0.70711;,
0.70710; 0.00000; -0.70711;,
0.70710; 0.00000; -0.70711;,
0.70710; 0.00000; -0.70711;,
0.70710; 0.00000; 0.70711;,
0.70710; 0.00000; 0.70711;,
0.70710; 0.00000; 0.70711;,
0.70710; 0.00000; 0.70711;,
-0.70711; 0.00000; -0.70711;,
-0.70711; 0.00000; -0.70711;,
-0.70711; 0.00000; -0.70711;,
-0.70711; 0.00000; -0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; -0.70711;,
-0.70711; 0.00000; -0.70711;,
-0.70711; 0.00000; -0.70711;,
-0.70711; 0.00000; -0.70711;,
-0.70711; 0.00000; -0.70711;,
-0.70711; 0.00000; -0.70711;,
-0.70711; 0.00000; -0.70711;,
-0.70711; 0.00000; -0.70711;,
-0.70756; -0.00294; 0.70665;,
-0.70756; -0.00294; 0.70665;,
-0.70756; -0.00294; 0.70665;,
-0.70711; 0.00000; -0.70711;,
-0.70711; 0.00000; -0.70711;,
-0.70711; 0.00000; -0.70711;,
-0.70610; -0.00162; 0.70811;,
-0.70610; -0.00162; 0.70811;,
-0.70610; -0.00162; 0.70811;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.17169; -0.97007; 0.17169;,
-0.17169; -0.97007; 0.17169;,
-0.17169; -0.97007; 0.17169;,
0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.17169; -0.97007; 0.17169;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
-0.70811; 0.00796; 0.70606;,
-0.70811; 0.00796; 0.70606;,
-0.70811; 0.00796; 0.70606;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
-0.70919; 0.00000; 0.70502;,
-0.70919; 0.00000; 0.70502;,
-0.70919; 0.00000; 0.70502;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
-0.70843; 0.00000; 0.70578;,
-0.70843; 0.00000; 0.70578;,
-0.70843; 0.00000; 0.70578;,
0.00000; 1.00000; 0.00000;,
-0.70710; -0.00393; 0.70710;,
-0.70710; -0.00393; 0.70710;,
-0.70710; -0.00393; 0.70710;,
-0.70843; 0.00000; 0.70578;,
0.70711; 0.00000; -0.70710;,
0.70711; 0.00000; -0.70710;,
0.70711; 0.00000; -0.70710;,
-0.70082; 0.00000; 0.71334;,
-0.70082; 0.00000; 0.71334;,
-0.70082; 0.00000; 0.71334;,
0.70711; 0.00000; -0.70711;,
0.70711; 0.00000; -0.70711;,
0.70711; 0.00000; -0.70711;,
0.70711; 0.00000; -0.70710;,
0.70710; 0.00000; -0.70711;,
0.70710; 0.00000; -0.70711;,
0.70710; 0.00000; -0.70711;,
0.70710; 0.00000; -0.70711;,
0.70710; 0.00000; -0.70711;,
0.70711; 0.00000; -0.70710;,
0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;,
0.00000; -1.00000; 0.00000;,
0.00000; -1.00000; 0.00000;,
0.00000; -1.00000; 0.00000;,
0.00000; -1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.16331; -0.97296; 0.16331;,
0.16331; -0.97296; 0.16331;,
0.16331; -0.97296; 0.16331;,
0.16331; -0.97296; 0.16331;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 0.01785; -0.99984;,
0.00000; 0.01785; -0.99984;,
0.00000; 0.01785; -0.99984;,
0.00000; 0.01785; -0.99984;,
0.99984; 0.01785; 0.00000;,
0.99984; 0.01785; 0.00000;,
0.99984; 0.01785; 0.00000;,
0.99984; 0.01785; 0.00000;,
-0.99984; 0.01785; 0.00000;,
-0.99984; 0.01785; 0.00000;,
-0.99984; 0.01785; 0.00000;,
-0.99984; 0.01785; 0.00000;,
0.00000; 0.01785; 0.99984;,
0.00000; 0.01785; 0.99984;,
0.00000; 0.01785; 0.99984;,
0.00000; 0.01785; 0.99984;,
0.88768; 0.27806; 0.36702;,
0.88768; 0.27806; 0.36702;,
0.88768; 0.27806; 0.36702;,
0.88668; 0.28001; 0.36795;,
0.88668; 0.28001; 0.36795;,
0.88668; 0.28001; 0.36795;,
-0.88636; 0.28064; -0.36824;,
-0.88636; 0.28064; -0.36824;,
-0.88636; 0.28064; -0.36824;,
-0.88669; 0.28001; -0.36794;,
-0.88669; 0.28001; -0.36794;,
-0.88669; 0.28001; -0.36794;,
-0.36971; 0.28638; 0.88391;,
-0.36971; 0.28638; 0.88391;,
-0.36971; 0.28638; 0.88391;,
-0.36562; 0.27774; 0.88836;,
-0.36562; 0.27774; 0.88836;,
-0.36562; 0.27774; 0.88836;,
-0.46658; 0.86298; -0.19384;,
-0.46658; 0.86298; -0.19384;,
-0.46658; 0.86298; -0.19384;,
0.46750; 0.86260; 0.19329;,
0.46750; 0.86260; 0.19329;,
0.46750; 0.86260; 0.19329;,
-0.19580; 0.86169; 0.46813;,
-0.19580; 0.86169; 0.46813;,
-0.19580; 0.86169; 0.46813;,
0.86010; 0.04374; 0.50825;,
0.86010; 0.04374; 0.50825;,
0.86010; 0.04374; 0.50825;,
-0.86010; 0.04374; 0.50825;,
-0.86010; 0.04374; 0.50825;,
-0.86010; 0.04374; 0.50825;,
0.97619; 0.21693; 0.00000;,
0.97619; 0.21693; 0.00000;,
0.97619; 0.21693; 0.00000;,
0.00000; 0.25432; 0.96712;,
0.00000; 0.25432; 0.96712;,
0.00000; 0.25432; 0.96712;,
-0.97695; 0.21348; 0.00000;,
-0.97695; 0.21348; 0.00000;,
-0.97695; 0.21348; 0.00000;,
0.70711; 0.00000; -0.70711;,
0.70711; 0.00000; -0.70711;,
0.70711; 0.00000; -0.70711;,
0.70711; 0.00000; -0.70711;,
0.70866; 0.00000; 0.70555;,
0.70866; 0.00000; 0.70555;,
0.70866; 0.00000; 0.70555;,
0.70866; 0.00000; 0.70555;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.70601; 0.00324; -0.70820;,
0.70601; 0.00324; -0.70820;,
0.70601; 0.00324; -0.70820;,
0.70082; 0.00000; -0.71334;,
0.70082; 0.00000; -0.71334;,
0.70082; 0.00000; -0.71334;,
-0.70082; 0.00000; 0.71334;,
-0.70082; 0.00000; 0.71334;,
-0.70082; 0.00000; 0.71334;,
-0.70502; -0.00262; 0.70919;,
-0.70502; -0.00262; 0.70919;,
-0.70502; -0.00262; 0.70919;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;;

110;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 7, 5, 6;,
3; 10, 9, 8;,
3; 11, 9, 10;,
3; 14, 13, 12;,
3; 15, 13, 14;,
3; 18, 17, 16;,
3; 19, 17, 18;,
3; 22, 21, 20;,
3; 23, 21, 22;,
3; 26, 25, 24;,
3; 27, 25, 26;,
3; 30, 29, 28;,
3; 31, 29, 30;,
3; 34, 33, 32;,
3; 33, 34, 35;,
3; 38, 37, 36;,
3; 41, 40, 39;,
3; 44, 43, 42;,
3; 47, 46, 45;,
3; 50, 49, 48;,
3; 53, 52, 51;,
3; 55, 54, 46;,
3; 48, 49, 56;,
3; 45, 57, 47;,
3; 54, 58, 46;,
3; 47, 57, 59;,
3; 62, 61, 60;,
3; 65, 64, 63;,
3; 66, 64, 65;,
3; 69, 68, 67;,
3; 72, 71, 70;,
3; 75, 74, 73;,
3; 70, 74, 75;,
3; 78, 77, 76;,
3; 79, 77, 78;,
3; 82, 81, 80;,
3; 83, 81, 82;,
3; 86, 85, 84;,
3; 89, 88, 87;,
3; 67, 88, 89;,
3; 65, 63, 90;,
3; 93, 92, 91;,
3; 63, 95, 94;,
3; 90, 63, 94;,
3; 98, 97, 96;,
3; 99, 65, 90;,
3; 102, 101, 100;,
3; 96, 97, 103;,
3; 106, 105, 104;,
3; 109, 108, 107;,
3; 112, 111, 110;,
3; 113, 106, 104;,
3; 116, 115, 114;,
3; 117, 115, 116;,
3; 115, 117, 118;,
3; 119, 105, 106;,
3; 122, 121, 120;,
3; 123, 121, 122;,
3; 126, 125, 124;,
3; 127, 125, 126;,
3; 129, 73, 128;,
3; 75, 73, 129;,
3; 132, 131, 130;,
3; 133, 131, 132;,
3; 87, 135, 134;,
3; 88, 135, 87;,
3; 69, 67, 89;,
3; 136, 69, 89;,
3; 136, 71, 69;,
3; 74, 71, 136;,
3; 74, 70, 71;,
3; 139, 138, 137;,
3; 140, 138, 139;,
3; 143, 142, 141;,
3; 144, 142, 143;,
3; 147, 146, 145;,
3; 148, 146, 147;,
3; 151, 150, 149;,
3; 152, 150, 151;,
3; 155, 154, 153;,
3; 158, 157, 156;,
3; 161, 160, 159;,
3; 164, 163, 162;,
3; 167, 166, 165;,
3; 170, 169, 168;,
3; 173, 172, 171;,
3; 176, 175, 174;,
3; 179, 178, 177;,
3; 182, 181, 180;,
3; 185, 184, 183;,
3; 188, 187, 186;,
3; 191, 190, 189;,
3; 194, 193, 192;,
3; 197, 196, 195;,
3; 198, 196, 197;,
3; 201, 200, 199;,
3; 202, 200, 201;,
3; 205, 204, 203;,
3; 206, 204, 205;,
3; 209, 208, 207;,
3; 212, 211, 210;,
3; 215, 214, 213;,
3; 218, 217, 216;,
3; 221, 220, 219;,
3; 222, 220, 221;,
3; 225, 224, 223;,
3; 226, 224, 225;;
}
MeshTextureCoords {
227;
-0.79297; 0.00000;,
1.70703; 0.00000;,
-0.79297; 0.50000;,
1.70703; 0.50000;,
1.70703; 0.00000;,
2.06055; 0.00000;,
1.70703; 0.75000;,
2.06055; 0.75000;,
-1.14648; 0.00000;,
-0.79297; 0.00000;,
-1.14648; 0.75000;,
-0.79297; 0.75000;,
2.06055; 0.75000;,
2.06055; 0.00000;,
2.41406; 0.75000;,
2.41406; 0.00000;,
-1.50000; 0.75000;,
-1.50000; 0.00000;,
-1.14648; 0.75000;,
-1.14648; 0.00000;,
0.50000; 1.00000;,
-1.50000; 1.00000;,
0.50000; -1.00000;,
-1.50000; -1.00000;,
0.50000; 1.87500;,
0.50000; -1.12500;,
1.50000; 1.87500;,
1.50000; -1.12500;,
0.50000; 2.00000;,
0.50000; 0.00000;,
1.50000; 1.87500;,
1.50000; 0.00000;,
0.50000; -1.00000;,
1.50000; -1.12500;,
0.50000; 1.87500;,
1.50000; 1.87500;,
-2.38379; -1.00000;,
4.50000; -1.00000;,
-3.50000; 0.75000;,
-0.50000; 1.00000;,
0.50000; 0.75000;,
0.50000; 1.00000;,
-2.38379; -1.00000;,
-3.50000; 0.75000;,
-5.50000; -1.00000;,
-5.50000; -1.00000;,
-3.50000; 0.75000;,
-4.50000; 0.75000;,
1.00000; 1.00000;,
0.00000; 0.00000;,
1.00000; 0.00000;,
1.00000; 1.00000;,
0.00000; 1.00000;,
0.00000; 0.75000;,
4.50000; 1.00000;,
-3.50000; 1.00000;,
0.00000; 1.00000;,
-5.50000; 1.00000;,
4.50000; -1.00000;,
-4.50000; 1.00000;,
2.00000; -0.28125;,
2.00000; -0.12500;,
1.27441; -0.28125;,
2.90918; 1.06250;,
2.90918; 0.12500;,
5.09082; 1.06250;,
5.09082; 0.12500;,
-4.41406; 0.00000;,
0.00000; 0.00000;,
0.00000; 0.12500;,
6.07812; 0.00000;,
2.25000; 0.12500;,
2.25000; 0.00000;,
8.07812; 2.66406;,
5.25000; 1.25000;,
9.74219; 1.83203;,
1.35547; 0.08203;,
0.50195; 0.08203;,
1.35547; 0.58203;,
0.50195; 0.58203;,
0.85352; 0.23242;,
0.00000; 0.23242;,
0.85352; 0.73242;,
0.00000; 0.73242;,
0.00000; 0.00000;,
1.27441; -0.28125;,
2.00000; -0.12500;,
-8.49219; 2.74609;,
-9.20020; 2.39258;,
-4.25000; 0.62500;,
7.27246; 2.93750;,
1.27441; -0.28125;,
0.00000; 0.00000;,
0.00000; -0.28125;,
0.72754; 2.93750;,
0.72754; 1.06250;,
2.00000; -0.12500;,
0.00000; 2.00000;,
0.00000; 0.00000;,
7.27246; 1.06250;,
-0.42480; 3.12500;,
0.00000; 2.00000;,
2.00000; 3.12500;,
2.00000; 3.12500;,
0.50000; 2.87500;,
0.50000; -0.12500;,
1.00000; 0.00000;,
-0.42480; 2.00000;,
0.00000; 2.00000;,
-0.42480; 3.12500;,
0.50000; 2.87500;,
1.00000; 2.00000;,
1.50000; 2.87500;,
1.00000; 2.00000;,
1.00000; 2.00000;,
1.00000; 0.00000;,
1.50000; 2.87500;,
1.50000; -0.12500;,
1.00000; -0.12500;,
1.00000; -0.12500;,
0.50000; 1.87500;,
0.50000; -1.12500;,
1.50000; 1.87500;,
1.50000; -1.12500;,
-0.50000; -0.50000;,
1.85352; -0.50000;,
-0.50000; 1.25000;,
1.85352; 1.25000;,
9.31543; 3.28320;,
10.98047; 2.45117;,
-0.07715; -0.50000;,
0.92285; -0.50000;,
-0.07715; 2.00000;,
0.92285; 2.00000;,
-10.26074; 3.62988;,
-10.96777; 3.27637;,
-3.00000; 1.25000;,
1.13184; 1.00000;,
1.27246; -4.59961;,
0.56543; 1.00000;,
0.56543; -4.59961;,
0.56543; -4.59961;,
1.27246; -4.59961;,
0.56543; 1.00000;,
1.13184; 1.00000;,
0.00000; 1.00000;,
0.56543; 1.00000;,
-0.14160; -4.59961;,
0.56543; -4.59961;,
0.00000; 1.00000;,
-0.14160; -4.59961;,
0.56543; 1.00000;,
0.56543; -4.59961;,
2.19238; 0.23828;,
2.19238; -0.42480;,
2.81934; 0.23828;,
2.81934; 0.23828;,
2.19238; -0.42480;,
2.81934; -0.42480;,
4.69824; 0.23828;,
4.69824; -0.42480;,
5.32520; 0.23828;,
5.32520; 0.23828;,
4.69824; -0.42480;,
5.32520; -0.42480;,
0.93945; 0.23828;,
0.93945; -0.42480;,
1.56641; 0.23828;,
1.56641; 0.23828;,
0.93945; -0.42480;,
1.56641; -0.42480;,
5.01172; 0.51270;,
4.69824; 0.23828;,
5.32520; 0.23828;,
2.50586; 0.51270;,
2.19238; 0.23828;,
2.81934; 0.23828;,
1.25293; 0.51270;,
0.93945; 0.23828;,
1.56641; 0.23828;,
1.56738; 0.42969;,
2.60938; 0.42969;,
2.08789; 1.83301;,
4.90820; 0.42969;,
5.95020; 0.42969;,
5.42969; 1.83301;,
1.31543; 1.00000;,
0.94824; -0.12500;,
1.68164; -0.12500;,
0.65723; 1.00000;,
0.36719; -0.12500;,
0.94824; -0.12500;,
2.62988; 1.00000;,
2.26367; -0.12500;,
2.99707; -0.12500;,
2.00000; -2.00000;,
2.00000; 0.00000;,
0.00000; -2.12500;,
0.00000; 1.12500;,
0.00000; -2.12500;,
2.00000; -2.12500;,
0.00000; 1.12500;,
2.00000; 1.12500;,
1.75000; 0.61133;,
0.25000; 0.61133;,
1.75000; 0.96484;,
0.25000; 0.96484;,
0.00000; 1.12500;,
2.00000; 0.00000;,
2.50000; 1.12500;,
2.50000; 1.12500;,
2.00000; 0.00000;,
2.50000; 0.00000;,
-0.50000; 0.00000;,
0.00000; 0.00000;,
-0.50000; 1.12500;,
-0.50000; 1.12500;,
0.00000; 0.00000;,
1.00000; 1.12500;,
1.00000; 1.12500;,
0.00000; 0.00000;,
1.00000; -2.00000;,
0.00000; -2.00000;,
-3.00000; -1.00000;,
5.00000; -1.00000;,
-3.00000; 2.12500;,
5.00000; 2.12500;;
}

}

}

Frame frmpart15_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part15 {
16;
-18.40500; -2.28000; -33.62500;,
-18.40500; -2.28000; -31.62500;,
-18.40500; -2.68000; -33.62500;,
-18.40500; -2.68000; -31.62500;,
18.27500; -1.48000; -34.27000;,
19.12500; -1.48000; -35.11500;,
18.27500; -1.00500; -34.27000;,
19.12500; -1.00500; -35.11500;,
3.34500; -1.00500; -35.79000;,
2.78000; -1.00500; -35.22500;,
3.34500; -1.48000; -35.79000;,
2.78000; -1.48000; -35.22500;,
16.60500; -1.48000; -35.66000;,
17.45000; -1.48000; -34.81000;,
16.60500; -0.90500; -35.66000;,
17.45000; -0.90500; -34.81000;;

8;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 7, 5, 6;,
3; 10, 9, 8;,
3; 11, 9, 10;,
3; 14, 13, 12;,
3; 15, 13, 14;;

MeshMaterialList {
1;
8;
0,
0,
0,
0,
0,
0,
0,
0;
Material mat15 {
  0.687500; 0.687500; 0.687500; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "527B3CF9_c.bmp";
  }
  DiffuseTextureFileName  {
     "527B3CF9_c.bmp";
  }
  FS10Material {
    0.687500; 0.687500; 0.687500; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "527B3CF9_c.bmp";
    }
  }
}
}

MeshNormals {
16;
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
0.70502; 0.00000; 0.70919;,
0.70502; 0.00000; 0.70919;,
0.70502; 0.00000; 0.70919;,
0.70502; 0.00000; 0.70919;,
0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;,
-0.70919; 0.00000; 0.70502;,
-0.70919; 0.00000; 0.70502;,
-0.70919; 0.00000; 0.70502;,
-0.70919; 0.00000; 0.70502;;

8;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 7, 5, 6;,
3; 10, 9, 8;,
3; 11, 9, 10;,
3; 14, 13, 12;,
3; 15, 13, 14;;
}
MeshTextureCoords {
16;
15.00000; 1.00000;,
-10.00000; 1.00000;,
15.00000; 0.00000;,
-10.00000; 0.00000;,
-6.00000; 0.00000;,
10.00000; 0.00000;,
-6.00000; 1.00000;,
10.00000; 1.00000;,
6.35156; 0.95850;,
-4.31250; 0.95850;,
6.35156; 0.00000;,
-4.31250; 0.00000;,
-6.00000; 0.00000;,
10.00000; 0.00000;,
-6.00000; 1.00000;,
10.00000; 1.00000;;
}

}

}

Frame frmpart16_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part16 {
280;
-18.40500; -2.28000; -33.62500;,
-18.40500; -2.28000; -31.62500;,
-20.78500; -2.28000; -33.33001;,
-20.78500; -2.28000; -31.33000;,
-18.40500; -2.68000; -33.62500;,
-20.78500; -2.28000; -33.33001;,
-20.78500; -2.28000; -32.33000;,
-18.40500; -2.68000; -32.62500;,
-18.40500; -2.68000; -31.62500;,
-20.78500; -2.28000; -31.33000;,
-18.40500; -2.28000; -31.62500;,
-18.40500; -2.68000; -33.62500;,
-18.40500; -2.28000; -33.62500;,
-20.78500; -2.28000; -33.33001;,
-18.40500; -2.68000; -31.62500;,
-18.40500; -2.68000; -32.62500;,
-20.78500; -2.28000; -32.33000;,
-20.78500; -2.28000; -31.33000;,
-18.40500; -2.68000; -31.62500;,
-11.04500; -2.68000; -33.58500;,
-18.40500; -2.68000; -32.62500;,
-11.04500; -2.28000; -32.54501;,
-18.40500; -2.68000; -31.62500;,
-18.40500; -2.28000; -31.62500;,
-18.40500; -2.68000; -33.62500;,
-11.04500; -2.28000; -34.62500;,
-18.40500; -2.28000; -33.62500;,
-11.04500; -2.28000; -32.54501;,
-11.04500; -2.68000; -33.58500;,
-18.40500; -2.68000; -31.62500;,
-18.40500; -2.68000; -33.62500;,
-18.40500; -2.68000; -32.62500;,
-11.04500; -2.68000; -33.58500;,
-18.40500; -2.68000; -33.62500;,
-11.04500; -2.68000; -33.58500;,
-11.04500; -2.28000; -34.62500;,
-4.01000; -2.28000; -39.75000;,
-3.72500; -2.68000; -38.90000;,
-3.44000; -2.88000; -39.75000;,
-3.72500; -2.28000; -40.59500;,
-4.01000; -2.28000; -39.75000;,
-3.44000; -2.88000; -39.75000;,
-3.72500; -2.68000; -38.90000;,
-6.27000; -2.28000; -37.48500;,
-5.70500; -2.68000; -36.92001;,
-4.01000; -2.28000; -39.75000;,
-6.27000; -2.28000; -37.48500;,
-3.72500; -2.68000; -38.90000;,
-3.72500; -2.68000; -38.90000;,
-2.87500; -2.28000; -38.62000;,
-2.87500; -2.88000; -39.18500;,
-2.87500; -2.28000; -38.62000;,
-1.96000; -2.28000; -38.83500;,
-2.87500; -2.88000; -39.18500;,
-5.14000; -2.28000; -36.35500;,
-3.72500; -2.68000; -38.90000;,
-5.70500; -2.68000; -36.92001;,
-2.87500; -2.28000; -38.62000;,
-1.96000; -2.28000; -38.83500;,
-3.44000; -2.88000; -39.75000;,
-2.87500; -2.88000; -39.18500;,
-1.96000; -2.28000; -38.83500;,
-3.72500; -2.28000; -40.59500;,
-3.44000; -2.88000; -39.75000;,
-11.04500; -2.28000; -34.62500;,
-11.04500; -2.68000; -33.58500;,
-6.27000; -2.28000; -37.48500;,
-3.44000; -2.88000; -39.75000;,
-3.72500; -2.68000; -38.90000;,
-2.87500; -2.88000; -39.18500;,
-5.14000; -2.28000; -36.35500;,
-5.70500; -2.68000; -36.92001;,
-11.04500; -2.68000; -33.58500;,
-6.27000; -2.28000; -37.48500;,
-11.04500; -2.68000; -33.58500;,
-5.70500; -2.68000; -36.92001;,
3.34500; -1.00500; -34.66000;,
2.81500; -0.78000; -34.52000;,
3.34500; -0.78000; -34.66000;,
-5.14000; -2.28000; -36.35500;,
-11.04500; -2.68000; -33.58500;,
-11.04500; -2.28000; -32.54501;,
2.64000; -1.00500; -35.08000;,
2.81500; -0.78000; -34.52000;,
3.34500; -1.00500; -34.66000;,
2.81500; -0.78000; -34.52000;,
2.64000; -1.00500; -35.08000;,
2.35500; -0.78000; -34.80000;,
2.78000; -1.48000; -35.22500;,
3.34500; -1.00500; -34.66000;,
3.34500; -1.48000; -34.66000;,
2.64000; -1.00500; -35.08000;,
3.34500; -1.00500; -34.66000;,
2.78000; -1.00500; -35.22500;,
2.78000; -1.00500; -35.22500;,
17.93500; -1.48000; -34.32500;,
15.00500; -1.48000; -31.39500;,
17.93500; -0.78000; -34.32500;,
15.00500; -0.78000; -31.39500;,
6.61000; -0.78000; -31.39500;,
6.61000; -1.48000; -31.39500;,
3.34500; -0.78000; -34.66000;,
3.34500; -1.48000; -34.66000;,
11.94000; -0.78000; -31.39500;,
15.00500; -0.78000; -31.39500;,
11.94000; -1.48000; -31.39500;,
15.00500; -1.48000; -31.39500;,
10.14000; -0.78000; -31.39500;,
10.14000; -1.48000; -31.39500;,
6.61000; -0.78000; -31.39500;,
6.61000; -1.48000; -31.39500;,
28.85000; -1.08000; -27.17500;,
26.43000; -1.48000; -28.68000;,
25.76000; -1.08000; -28.29500;,
31.54500; -1.68000; -27.03000;,
26.43000; -1.48000; -28.68000;,
28.85000; -1.08000; -27.17500;,
31.54500; -1.68000; -27.03000;,
28.85000; -1.08000; -27.17500;,
31.12000; -1.08000; -26.35000;,
34.93000; -0.88000; -22.11500;,
33.70500; -1.68000; -24.89000;,
34.19500; -1.48000; -21.85000;,
34.93000; -0.88000; -22.11500;,
34.49500; -1.08000; -25.23000;,
33.70500; -1.68000; -24.89000;,
33.45500; -0.88000; -21.58500;,
33.70500; -1.68000; -24.89000;,
32.91500; -1.08000; -24.54500;,
34.19500; -1.48000; -21.85000;,
33.70500; -1.68000; -24.89000;,
33.45500; -0.88000; -21.58500;,
33.70500; -1.68000; -24.89000;,
31.96500; -1.08000; -27.71000;,
31.54500; -1.68000; -27.03000;,
34.49500; -1.08000; -25.23000;,
31.96500; -1.08000; -27.71000;,
33.70500; -1.68000; -24.89000;,
32.91500; -1.08000; -24.54500;,
31.54500; -1.68000; -27.03000;,
31.12000; -1.08000; -26.35000;,
33.70500; -1.68000; -24.89000;,
31.54500; -1.68000; -27.03000;,
32.91500; -1.08000; -24.54500;,
31.96500; -1.08000; -27.71000;,
26.43000; -1.48000; -28.68000;,
31.54500; -1.68000; -27.03000;,
31.96500; -1.08000; -27.71000;,
27.10000; -0.88000; -29.07000;,
26.43000; -1.48000; -28.68000;,
38.54000; -0.88000; -18.67500;,
34.19500; -1.48000; -21.85000;,
38.11000; -1.48000; -17.96500;,
38.54000; -0.88000; -18.67500;,
34.93000; -0.88000; -22.11500;,
34.19500; -1.48000; -21.85000;,
36.88500; -0.88000; -17.71500;,
34.19500; -1.48000; -21.85000;,
33.45500; -0.88000; -21.58500;,
38.11000; -1.48000; -17.96500;,
34.19500; -1.48000; -21.85000;,
36.88500; -0.88000; -17.71500;,
35.23500; -0.98000; -8.63000;,
35.32500; -1.48000; -11.40000;,
34.77500; -0.78000; -9.93000;,
35.23500; -0.98000; -8.63000;,
36.81000; -1.48000; -9.96500;,
35.32500; -1.48000; -11.40000;,
34.77500; -0.78000; -9.93000;,
35.20000; -1.48000; -12.90000;,
34.69500; -0.78000; -12.32000;,
34.77500; -0.78000; -9.93000;,
35.32500; -1.48000; -11.40000;,
35.20000; -1.48000; -12.90000;,
35.20000; -1.48000; -12.90000;,
36.20500; -1.08000; -16.08000;,
35.73500; -1.48000; -16.49000;,
36.31500; -0.98000; -13.12500;,
36.20500; -1.08000; -16.08000;,
35.20000; -1.48000; -12.90000;,
38.80500; -0.98000; -10.28000;,
36.81000; -1.48000; -9.96500;,
37.40500; -0.98000; -8.08000;,
37.76000; -0.98000; -11.92000;,
36.81000; -1.48000; -9.96500;,
38.80500; -0.98000; -10.28000;,
38.11000; -1.48000; -17.96500;,
36.88500; -0.88000; -17.71500;,
35.31500; -0.88000; -16.81000;,
35.32500; -1.48000; -11.40000;,
36.31500; -0.98000; -13.12500;,
35.20000; -1.48000; -12.90000;,
35.73500; -1.48000; -16.49000;,
35.31500; -0.88000; -16.81000;,
35.20000; -1.48000; -12.90000;,
38.11000; -1.48000; -17.96500;,
35.31500; -0.88000; -16.81000;,
35.73500; -1.48000; -16.49000;,
37.40500; -0.98000; -8.08000;,
36.81000; -1.48000; -9.96500;,
35.23500; -0.98000; -8.63000;,
35.20000; -1.48000; -12.90000;,
35.31500; -0.88000; -16.81000;,
34.69500; -0.78000; -12.32000;,
37.76000; -0.98000; -11.92000;,
35.32500; -1.48000; -11.40000;,
36.81000; -1.48000; -9.96500;,
37.76000; -0.98000; -11.92000;,
36.31500; -0.98000; -13.12500;,
35.32500; -1.48000; -11.40000;,
43.51500; -0.88000; -18.10000;,
43.68500; -1.48000; -17.60000;,
44.20000; -1.08000; -21.29000;,
43.68500; -1.48000; -17.60000;,
43.86000; -1.08000; -17.09500;,
44.20000; -1.08000; -21.29000;,
41.22000; -0.88000; -17.32500;,
43.68500; -1.48000; -17.60000;,
43.51500; -0.88000; -18.10000;,
41.22000; -0.88000; -17.32500;,
41.20500; -1.48000; -16.81500;,
43.68500; -1.48000; -17.60000;,
43.86000; -1.08000; -17.09500;,
41.20500; -1.48000; -16.81500;,
41.19500; -1.08000; -16.31000;,
43.86000; -1.08000; -17.09500;,
43.68500; -1.48000; -17.60000;,
41.20500; -1.48000; -16.81500;,
38.54000; -0.88000; -18.67500;,
41.20500; -1.48000; -16.81500;,
41.22000; -0.88000; -17.32500;,
38.54000; -0.88000; -18.67500;,
38.11000; -1.48000; -17.96500;,
41.20500; -1.48000; -16.81500;,
41.19500; -1.08000; -16.31000;,
38.11000; -1.48000; -17.96500;,
38.17000; -1.08000; -17.18500;,
41.19500; -1.08000; -16.31000;,
41.20500; -1.48000; -16.81500;,
38.11000; -1.48000; -17.96500;,
36.20500; -1.08000; -16.08000;,
38.11000; -1.48000; -17.96500;,
35.73500; -1.48000; -16.49000;,
38.17000; -1.08000; -17.18500;,
38.11000; -1.48000; -17.96500;,
36.20500; -1.08000; -16.08000;,
27.10000; -0.88000; -29.07000;,
21.47000; -0.88000; -32.77000;,
21.47000; -1.48000; -32.77000;,
21.47000; -1.48000; -32.77000;,
21.04500; -1.48000; -32.34500;,
26.43000; -1.48000; -28.68000;,
25.76000; -1.08000; -28.29500;,
26.43000; -1.48000; -28.68000;,
20.62000; -1.48000; -31.92000;,
27.10000; -0.88000; -29.07000;,
21.47000; -1.48000; -32.77000;,
26.43000; -1.48000; -28.68000;,
20.62000; -1.48000; -31.92000;,
26.43000; -1.48000; -28.68000;,
21.04500; -1.48000; -32.34500;,
25.76000; -1.08000; -28.29500;,
20.62000; -1.48000; -31.92000;,
20.62000; -0.88000; -31.92000;,
18.92500; -1.48000; -35.31500;,
18.50000; -1.48000; -34.89000;,
21.47000; -1.48000; -32.77000;,
21.04500; -1.48000; -32.34500;,
18.92500; -1.48000; -35.31500;,
21.47000; -1.48000; -32.77000;,
21.47000; -0.88000; -32.77000;,
18.92500; -0.88000; -35.31500;,
18.07500; -1.48000; -34.47000;,
18.07500; -0.88000; -34.47000;,
20.62000; -1.48000; -31.92000;,
20.62000; -0.88000; -31.92000;,
18.07500; -1.48000; -34.47000;,
20.62000; -1.48000; -31.92000;,
18.50000; -1.48000; -34.89000;,
21.04500; -1.48000; -32.34500;;

102;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 7, 6, 4;,
3; 10, 9, 8;,
3; 13, 12, 11;,
3; 16, 15, 14;,
3; 17, 16, 14;,
3; 20, 19, 18;,
3; 23, 22, 21;,
3; 26, 25, 24;,
3; 29, 28, 27;,
3; 32, 31, 30;,
3; 35, 34, 33;,
3; 38, 37, 36;,
3; 41, 40, 39;,
3; 44, 43, 42;,
3; 47, 46, 45;,
3; 50, 49, 48;,
3; 53, 52, 51;,
3; 56, 55, 54;,
3; 55, 57, 54;,
3; 60, 59, 58;,
3; 63, 62, 61;,
3; 66, 65, 64;,
3; 69, 68, 67;,
3; 72, 71, 70;,
3; 75, 74, 73;,
3; 78, 77, 76;,
3; 81, 80, 79;,
3; 84, 83, 82;,
3; 87, 86, 85;,
3; 90, 89, 88;,
3; 93, 92, 91;,
3; 88, 89, 94;,
3; 97, 96, 95;,
3; 98, 96, 97;,
3; 101, 100, 99;,
3; 102, 100, 101;,
3; 105, 104, 103;,
3; 106, 104, 105;,
3; 109, 108, 107;,
3; 110, 108, 109;,
3; 113, 112, 111;,
3; 116, 115, 114;,
3; 119, 118, 117;,
3; 122, 121, 120;,
3; 125, 124, 123;,
3; 128, 127, 126;,
3; 131, 130, 129;,
3; 134, 133, 132;,
3; 137, 136, 135;,
3; 140, 139, 138;,
3; 143, 142, 141;,
3; 146, 145, 144;,
3; 149, 148, 147;,
3; 152, 151, 150;,
3; 155, 154, 153;,
3; 158, 157, 156;,
3; 161, 160, 159;,
3; 164, 163, 162;,
3; 167, 166, 165;,
3; 170, 169, 168;,
3; 173, 172, 171;,
3; 176, 175, 174;,
3; 179, 178, 177;,
3; 182, 181, 180;,
3; 185, 184, 183;,
3; 188, 187, 186;,
3; 191, 190, 189;,
3; 194, 193, 192;,
3; 197, 196, 195;,
3; 200, 199, 198;,
3; 203, 202, 201;,
3; 206, 205, 204;,
3; 209, 208, 207;,
3; 212, 211, 210;,
3; 215, 214, 213;,
3; 218, 217, 216;,
3; 221, 220, 219;,
3; 224, 223, 222;,
3; 227, 226, 225;,
3; 230, 229, 228;,
3; 233, 232, 231;,
3; 236, 235, 234;,
3; 239, 238, 237;,
3; 242, 241, 240;,
3; 245, 244, 243;,
3; 248, 247, 246;,
3; 251, 250, 249;,
3; 254, 253, 252;,
3; 257, 256, 255;,
3; 260, 259, 258;,
3; 263, 262, 261;,
3; 266, 265, 264;,
3; 267, 265, 266;,
3; 270, 269, 268;,
3; 271, 270, 268;,
3; 274, 273, 272;,
3; 275, 273, 274;,
3; 278, 277, 276;,
3; 279, 277, 278;;

MeshMaterialList {
1;
102;
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0;
Material mat16 {
  0.687500; 0.687500; 0.687500; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "514C13D3_c.bmp";
  }
  DiffuseTextureFileName  {
     "514C13D3_c.bmp";
  }
  FS10Material {
    0.687500; 0.687500; 0.687500; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "514C13D3_c.bmp";
    }
  }
}
}

MeshNormals {
280;
0.00000; -1.00000; 0.00000;,
0.00000; -1.00000; 0.00000;,
0.00000; -1.00000; 0.00000;,
0.00000; -1.00000; 0.00000;,
0.16574; 0.98617; 0.00000;,
0.16574; 0.98617; 0.00000;,
0.16574; 0.98617; 0.00000;,
0.16574; 0.98617; 0.00000;,
-0.12301; 0.00000; -0.99241;,
-0.12301; 0.00000; -0.99241;,
-0.12301; 0.00000; -0.99241;,
0.12301; 0.00000; 0.99241;,
0.12301; 0.00000; 0.99241;,
0.12301; 0.00000; 0.99241;,
0.16574; 0.98617; 0.00000;,
0.16574; 0.98617; 0.00000;,
0.16574; 0.98617; 0.00000;,
0.16574; 0.98617; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
-0.12403; 0.00000; -0.99228;,
-0.12403; 0.00000; -0.99228;,
-0.12403; 0.00000; -0.99228;,
0.13463; 0.00000; 0.99090;,
0.13463; 0.00000; 0.99090;,
0.13463; 0.00000; 0.99090;,
-0.09516; 0.92911; -0.35735;,
-0.09516; 0.92911; -0.35735;,
-0.09516; 0.92911; -0.35735;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
-0.00195; 0.93334; 0.35898;,
-0.00195; 0.93334; 0.35898;,
-0.00195; 0.93334; 0.35898;,
0.72263; 0.68650; 0.08076;,
0.72263; 0.68650; 0.08076;,
0.72263; 0.68650; 0.08076;,
0.70425; 0.66904; 0.23753;,
0.70425; 0.66904; 0.23753;,
0.70425; 0.66904; 0.23753;,
0.31653; 0.89421; 0.31654;,
0.31653; 0.89421; 0.31654;,
0.31653; 0.89421; 0.31654;,
0.31591; 0.89490; 0.31521;,
0.31591; 0.89490; 0.31521;,
0.31591; 0.89490; 0.31521;,
-0.08251; 0.68322; -0.72554;,
-0.08251; 0.68322; -0.72554;,
-0.08251; 0.68322; -0.72554;,
-0.16862; 0.67574; -0.71760;,
-0.16862; 0.67574; -0.71760;,
-0.16862; 0.67574; -0.71760;,
-0.31653; 0.89421; -0.31653;,
-0.31653; 0.89421; -0.31653;,
-0.31653; 0.89421; -0.31653;,
-0.31653; 0.89421; -0.31653;,
-0.58857; 0.55423; 0.58857;,
-0.58857; 0.55423; 0.58857;,
-0.58857; 0.55423; 0.58857;,
-0.58882; 0.55192; 0.59049;,
-0.58882; 0.55192; 0.59049;,
-0.58882; 0.55192; 0.59049;,
0.21021; 0.91249; 0.35096;,
0.21021; 0.91249; 0.35096;,
0.21021; 0.91249; 0.35096;,
0.17098; 0.97033; -0.17098;,
0.17098; 0.97033; -0.17098;,
0.17098; 0.97033; -0.17098;,
-0.24208; 0.88946; -0.38762;,
-0.24208; 0.88946; -0.38762;,
-0.24208; 0.88946; -0.38762;,
0.24208; 0.88946; 0.38762;,
0.24208; 0.88946; 0.38762;,
0.24208; 0.88946; 0.38762;,
-0.25539; 0.00000; -0.96684;,
-0.25539; 0.00000; -0.96684;,
-0.25539; 0.00000; -0.96684;,
-0.22565; 0.90927; -0.34972;,
-0.22565; 0.90927; -0.34972;,
-0.22565; 0.90927; -0.34972;,
0.25501; 0.86703; -0.42805;,
0.25501; 0.86703; -0.42805;,
0.25501; 0.86703; -0.42805;,
0.26115; 0.86471; -0.42904;,
0.26115; 0.86471; -0.42904;,
0.26115; 0.86471; -0.42904;,
0.70710; 0.00000; -0.70711;,
0.70710; 0.00000; -0.70711;,
0.70710; 0.00000; -0.70711;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.70710; 0.00000; -0.70711;,
-0.70711; 0.00000; -0.70711;,
-0.70711; 0.00000; -0.70711;,
-0.70711; 0.00000; -0.70711;,
-0.70711; 0.00000; -0.70711;,
0.70711; 0.00000; -0.70711;,
0.70711; 0.00000; -0.70711;,
0.70711; 0.00000; -0.70711;,
0.70711; 0.00000; -0.70711;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.19116; 0.82783; -0.52741;,
0.19116; 0.82783; -0.52741;,
0.19116; 0.82783; -0.52741;,
0.20945; 0.80751; -0.55141;,
0.20945; 0.80751; -0.55141;,
0.20945; 0.80751; -0.55141;,
0.20755; 0.79423; -0.57107;,
0.20755; 0.79423; -0.57107;,
0.20755; 0.79423; -0.57107;,
-0.62105; 0.78226; 0.04864;,
-0.62105; 0.78226; 0.04864;,
-0.62105; 0.78226; 0.04864;,
-0.59584; 0.80248; 0.03168;,
-0.59584; 0.80248; 0.03168;,
-0.59584; 0.80248; 0.03168;,
0.55323; 0.81825; -0.15621;,
0.55323; 0.81825; -0.15621;,
0.55323; 0.81825; -0.15621;,
0.59054; 0.79343; -0.14739;,
0.59054; 0.79343; -0.14739;,
0.59054; 0.79343; -0.14739;,
-0.42958; 0.79212; 0.43360;,
-0.42958; 0.79212; 0.43360;,
-0.42958; 0.79212; 0.43360;,
-0.42142; 0.79849; 0.42991;,
-0.42142; 0.79849; 0.42991;,
-0.42142; 0.79849; 0.42991;,
0.43203; 0.79294; -0.42964;,
0.43203; 0.79294; -0.42964;,
0.43203; 0.79294; -0.42964;,
0.42192; 0.80039; -0.42586;,
0.42192; 0.80039; -0.42586;,
0.42192; 0.80039; -0.42586;,
-0.16119; 0.78730; 0.59512;,
-0.16119; 0.78730; 0.59512;,
-0.16119; 0.78730; 0.59512;,
-0.17515; 0.66656; 0.72458;,
-0.17515; 0.66656; 0.72458;,
-0.17515; 0.66656; 0.72458;,
-0.42032; 0.80245; 0.42357;,
-0.42032; 0.80245; 0.42357;,
-0.42032; 0.80245; 0.42357;,
-0.44936; 0.75875; 0.47157;,
-0.44936; 0.75875; 0.47157;,
-0.44936; 0.75875; 0.47157;,
0.47536; 0.77235; -0.42131;,
0.47536; 0.77235; -0.42131;,
0.47536; 0.77235; -0.42131;,
0.35191; 0.86625; -0.35463;,
0.35191; 0.86625; -0.35463;,
0.35191; 0.86625; -0.35463;,
0.65010; 0.75118; -0.11447;,
0.65010; 0.75118; -0.11447;,
0.65010; 0.75118; -0.11447;,
0.16432; 0.97164; -0.17005;,
0.16432; 0.97164; -0.17005;,
0.16432; 0.97164; -0.17005;,
0.80003; 0.59936; -0.02678;,
0.80003; 0.59936; -0.02678;,
0.80003; 0.59936; -0.02678;,
0.71983; 0.69156; -0.05999;,
0.71983; 0.69156; -0.05999;,
0.71983; 0.69156; -0.05999;,
-0.59921; 0.79560; -0.08930;,
-0.59921; 0.79560; -0.08930;,
-0.59921; 0.79560; -0.08930;,
-0.41173; 0.91117; -0.01551;,
-0.41173; 0.91117; -0.01551;,
-0.41173; 0.91117; -0.01551;,
-0.26457; 0.94956; -0.16836;,
-0.26457; 0.94956; -0.16836;,
-0.26457; 0.94956; -0.16836;,
-0.21984; 0.96543; 0.14008;,
-0.21984; 0.96543; 0.14008;,
-0.21984; 0.96543; 0.14008;,
0.41707; 0.55005; 0.72353;,
0.41707; 0.55005; 0.72353;,
0.41707; 0.55005; 0.72353;,
-0.40329; 0.91446; 0.03361;,
-0.40329; 0.91446; 0.03361;,
-0.40329; 0.91446; 0.03361;,
0.78331; 0.61058; 0.11673;,
0.78331; 0.61058; 0.11673;,
0.78331; 0.61058; 0.11673;,
0.40749; 0.63518; 0.65613;,
0.40749; 0.63518; 0.65613;,
0.40749; 0.63518; 0.65613;,
0.07004; 0.95850; -0.27635;,
0.07004; 0.95850; -0.27635;,
0.07004; 0.95850; -0.27635;,
0.84579; 0.52306; 0.10514;,
0.84579; 0.52306; 0.10514;,
0.84579; 0.52306; 0.10514;,
-0.16346; 0.97194; 0.16915;,
-0.16346; 0.97194; 0.16915;,
-0.16346; 0.97194; 0.16915;,
-0.15840; 0.96893; 0.18994;,
-0.15840; 0.96893; 0.18994;,
-0.15840; 0.96893; 0.18994;,
0.90239; 0.39644; 0.16892;,
0.90239; 0.39644; 0.16892;,
0.90239; 0.39644; 0.16892;,
-0.87774; 0.47383; -0.07114;,
-0.87774; 0.47383; -0.07114;,
-0.87774; 0.47383; -0.07114;,
0.24016; 0.66070; 0.71119;,
0.24016; 0.66070; 0.71119;,
0.24016; 0.66070; 0.71119;,
0.23532; 0.62604; 0.74344;,
0.23532; 0.62604; 0.74344;,
0.23532; 0.62604; 0.74344;,
-0.18053; 0.76926; -0.61290;,
-0.18053; 0.76926; -0.61290;,
-0.18053; 0.76926; -0.61290;,
-0.18086; 0.80050; -0.57139;,
-0.18086; 0.80050; -0.57139;,
-0.18086; 0.80050; -0.57139;,
-0.35639; 0.61028; 0.70749;,
-0.35639; 0.61028; 0.70749;,
-0.35639; 0.61028; 0.70749;,
-0.20644; 0.80541; 0.55560;,
-0.20644; 0.80541; 0.55560;,
-0.20644; 0.80541; 0.55560;,
0.13316; 0.87770; -0.46034;,
0.13316; 0.87770; -0.46034;,
0.13316; 0.87770; -0.46034;,
0.22384; 0.76615; -0.60242;,
0.22384; 0.76615; -0.60242;,
0.22384; 0.76615; -0.60242;,
-0.29392; 0.83044; -0.47326;,
-0.29392; 0.83044; -0.47326;,
-0.29392; 0.83044; -0.47326;,
-0.24078; 0.87104; -0.42816;,
-0.24078; 0.87104; -0.42816;,
-0.24078; 0.87104; -0.42816;,
-0.54921; 0.00000; 0.83569;,
-0.54921; 0.00000; 0.83569;,
-0.54921; 0.00000; 0.83569;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.25172; 0.85609; -0.45139;,
0.25172; 0.85609; -0.45139;,
0.25172; 0.85609; -0.45139;,
-0.40491; 0.77132; 0.49104;,
-0.40491; 0.77132; 0.49104;,
-0.40491; 0.77132; 0.49104;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.57634; 0.00000; -0.81721;,
0.57634; 0.00000; -0.81721;,
0.57634; 0.00000; -0.81721;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
0.70780; 0.00000; -0.70641;,
0.70780; 0.00000; -0.70641;,
0.70780; 0.00000; -0.70641;,
0.70780; 0.00000; -0.70641;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;;

102;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 7, 6, 4;,
3; 10, 9, 8;,
3; 13, 12, 11;,
3; 16, 15, 14;,
3; 17, 16, 14;,
3; 20, 19, 18;,
3; 23, 22, 21;,
3; 26, 25, 24;,
3; 29, 28, 27;,
3; 32, 31, 30;,
3; 35, 34, 33;,
3; 38, 37, 36;,
3; 41, 40, 39;,
3; 44, 43, 42;,
3; 47, 46, 45;,
3; 50, 49, 48;,
3; 53, 52, 51;,
3; 56, 55, 54;,
3; 55, 57, 54;,
3; 60, 59, 58;,
3; 63, 62, 61;,
3; 66, 65, 64;,
3; 69, 68, 67;,
3; 72, 71, 70;,
3; 75, 74, 73;,
3; 78, 77, 76;,
3; 81, 80, 79;,
3; 84, 83, 82;,
3; 87, 86, 85;,
3; 90, 89, 88;,
3; 93, 92, 91;,
3; 88, 89, 94;,
3; 97, 96, 95;,
3; 98, 96, 97;,
3; 101, 100, 99;,
3; 102, 100, 101;,
3; 105, 104, 103;,
3; 106, 104, 105;,
3; 109, 108, 107;,
3; 110, 108, 109;,
3; 113, 112, 111;,
3; 116, 115, 114;,
3; 119, 118, 117;,
3; 122, 121, 120;,
3; 125, 124, 123;,
3; 128, 127, 126;,
3; 131, 130, 129;,
3; 134, 133, 132;,
3; 137, 136, 135;,
3; 140, 139, 138;,
3; 143, 142, 141;,
3; 146, 145, 144;,
3; 149, 148, 147;,
3; 152, 151, 150;,
3; 155, 154, 153;,
3; 158, 157, 156;,
3; 161, 160, 159;,
3; 164, 163, 162;,
3; 167, 166, 165;,
3; 170, 169, 168;,
3; 173, 172, 171;,
3; 176, 175, 174;,
3; 179, 178, 177;,
3; 182, 181, 180;,
3; 185, 184, 183;,
3; 188, 187, 186;,
3; 191, 190, 189;,
3; 194, 193, 192;,
3; 197, 196, 195;,
3; 200, 199, 198;,
3; 203, 202, 201;,
3; 206, 205, 204;,
3; 209, 208, 207;,
3; 212, 211, 210;,
3; 215, 214, 213;,
3; 218, 217, 216;,
3; 221, 220, 219;,
3; 224, 223, 222;,
3; 227, 226, 225;,
3; 230, 229, 228;,
3; 233, 232, 231;,
3; 236, 235, 234;,
3; 239, 238, 237;,
3; 242, 241, 240;,
3; 245, 244, 243;,
3; 248, 247, 246;,
3; 251, 250, 249;,
3; 254, 253, 252;,
3; 257, 256, 255;,
3; 260, 259, 258;,
3; 263, 262, 261;,
3; 266, 265, 264;,
3; 267, 265, 266;,
3; 270, 269, 268;,
3; 271, 270, 268;,
3; 274, 273, 272;,
3; 275, 273, 274;,
3; 278, 277, 276;,
3; 279, 277, 278;;
}
MeshTextureCoords {
280;
1.00000; 3.00000;,
5.96191; 2.69043;,
1.00000; 0.00000;,
5.96191; -0.30957;,
0.75000; 1.00000;,
0.00000; -1.00000;,
1.50000; -1.00000;,
1.50000; 1.00000;,
0.75000; 0.00000;,
0.00000; 2.00000;,
0.00000; 0.00000;,
0.75000; 1.00000;,
0.00000; 1.00000;,
0.00000; -1.00000;,
0.75000; 0.00000;,
1.50000; 0.00000;,
1.50000; 2.00000;,
0.00000; 2.00000;,
0.75000; 3.00000;,
1.50000; -1.00000;,
1.50000; 3.00000;,
0.00000; -1.00000;,
0.75000; 3.00000;,
0.00000; 3.00000;,
0.75000; -1.00000;,
0.00000; 3.00000;,
0.00000; -1.00000;,
0.00000; -1.00000;,
1.50000; -1.00000;,
0.75000; 3.00000;,
0.75000; -1.00000;,
1.50000; -1.00000;,
1.50000; 3.00000;,
0.75000; -1.00000;,
1.50000; 3.00000;,
0.00000; 3.00000;,
0.00000; 2.50000;,
1.50000; 2.00000;,
2.00000; 3.00000;,
0.00000; 4.00000;,
0.00000; 2.50000;,
2.00000; 3.00000;,
1.50000; 2.00000;,
0.00000; 0.00000;,
1.50000; 0.00000;,
0.00000; 2.50000;,
0.00000; 0.00000;,
1.50000; 2.00000;,
1.50000; 2.00000;,
0.00000; 1.50000;,
2.00000; 1.00000;,
0.00000; 1.50000;,
0.00000; 0.00000;,
2.00000; 1.00000;,
0.00000; 4.00000;,
1.50000; 2.00000;,
1.50000; 4.00000;,
0.00000; 1.50000;,
0.00000; -1.00000;,
2.00000; 1.00000;,
2.00000; 0.00000;,
0.00000; -1.00000;,
0.00000; 2.00000;,
2.00000; 1.00000;,
0.00000; -1.00000;,
1.50000; -1.00000;,
0.00000; 3.00000;,
2.00000; 1.00000;,
4.00000; 0.50000;,
2.00000; 0.00000;,
0.00000; -1.00000;,
1.50000; -1.00000;,
1.50000; 3.00000;,
0.00000; 3.00000;,
1.50000; -1.00000;,
1.50000; 3.00000;,
0.32129; 0.00000;,
0.00000; 0.19873;,
0.00000; 0.00000;,
0.00000; -1.00000;,
1.50000; 3.00000;,
0.00000; 3.00000;,
0.42871; 0.57129;,
0.00000; 0.19873;,
0.32129; 0.00000;,
0.00000; 0.19873;,
0.42871; 0.57129;,
0.00000; 0.57129;,
1.00000; 0.57129;,
0.32129; 0.00000;,
1.00000; 0.00000;,
0.42871; 0.57129;,
0.32129; 0.00000;,
0.71387; 0.57129;,
0.71387; 0.57129;,
1.00000; -1.96094;,
1.00000; 1.00000;,
0.00000; -1.96094;,
0.00000; 1.00000;,
0.00000; 0.00000;,
1.00000; 0.00000;,
0.00000; 4.00000;,
1.00000; 4.00000;,
0.00000; 2.19189;,
0.00000; 0.00440;,
1.00000; 2.19189;,
1.00000; 0.00440;,
0.00000; 3.47754;,
1.00000; 3.47754;,
0.00000; 6.00000;,
1.00000; 6.00000;,
0.00000; 0.27100;,
1.00000; 2.00000;,
0.00000; 2.00000;,
1.00000; -1.00000;,
1.00000; 2.00000;,
0.00000; 0.27100;,
1.00000; -1.00000;,
0.00000; 0.27100;,
0.00000; -1.00000;,
0.00000; 1.00000;,
1.00000; 0.00000;,
1.00000; 1.00000;,
0.00000; 1.00000;,
0.00000; 0.00000;,
1.00000; 0.00000;,
0.00000; 0.00000;,
1.00000; 2.00000;,
0.00000; 2.00000;,
1.00000; 0.00000;,
1.00000; 2.00000;,
0.00000; 0.00000;,
1.00000; 1.00000;,
0.00000; 0.00000;,
1.00000; 0.00000;,
0.00000; 1.00000;,
0.00000; 0.00000;,
1.00000; 1.00000;,
0.00000; 0.00000;,
1.00000; 1.00000;,
0.00000; 1.00000;,
1.00000; 0.00000;,
1.00000; 1.00000;,
0.00000; 0.00000;,
0.00000; 2.00000;,
1.00000; -1.00000;,
1.00000; 2.00000;,
0.00000; 2.00000;,
0.00000; -1.00000;,
1.00000; -1.00000;,
0.00000; 2.00000;,
1.00000; -1.00000;,
1.00000; 2.00000;,
0.00000; 2.00000;,
0.00000; -1.00000;,
1.00000; -1.00000;,
0.00000; -1.00000;,
1.00000; 2.00000;,
0.00000; 2.00000;,
1.00000; -1.00000;,
1.00000; 2.00000;,
0.00000; -1.00000;,
0.00000; -0.16650;,
1.33301; 2.66650;,
0.00000; 0.83350;,
0.00000; -0.16650;,
2.00000; -0.50000;,
1.33301; 2.66650;,
0.00000; 0.83350;,
1.01465; 3.41650;,
0.00000; 3.00000;,
0.00000; 0.83350;,
1.33301; 2.66650;,
1.01465; 3.41650;,
1.00000; -0.33350;,
0.00000; -3.00000;,
1.00000; -3.00000;,
0.00000; 0.00000;,
0.00000; -3.00000;,
1.00000; -0.33350;,
0.00000; 3.00000;,
2.00000; 3.50000;,
0.00000; 5.00000;,
0.00000; 2.00000;,
2.00000; 3.50000;,
0.00000; 3.00000;,
1.00000; 5.00000;,
0.00000; 5.00000;,
0.00000; 3.00000;,
1.33301; 0.33350;,
0.00000; 0.00000;,
1.00000; -0.33350;,
1.00000; 6.00000;,
0.00000; 6.00000;,
1.01465; 3.41650;,
1.00000; 5.00000;,
0.00000; 3.00000;,
1.00000; 3.00000;,
0.00000; -2.00000;,
2.00000; -0.50000;,
0.00000; -0.16650;,
1.01465; 3.41650;,
0.00000; 6.00000;,
0.00000; 3.00000;,
0.00000; 2.00000;,
1.33301; 0.33350;,
2.00000; 3.50000;,
0.00000; 2.00000;,
0.00000; 0.00000;,
1.33301; 0.33350;,
0.00000; 0.00000;,
1.00000; 0.00000;,
0.00000; 2.00000;,
1.00000; 2.00000;,
0.16699; 2.00000;,
0.16699; 0.00000;,
0.00000; 0.00000;,
1.00000; 2.00000;,
0.00000; 2.00000;,
0.00000; 0.00000;,
1.00000; 0.00000;,
1.00000; 2.00000;,
0.16699; 0.00000;,
1.00000; 2.00000;,
0.16699; 2.00000;,
0.16699; 0.00000;,
1.00000; 0.00000;,
1.00000; 2.00000;,
0.00000; 0.00000;,
1.00000; 2.00000;,
0.00000; 2.00000;,
0.00000; 0.00000;,
1.00000; 0.00000;,
1.00000; 2.00000;,
0.16699; 0.00000;,
1.00000; 2.00000;,
0.16699; 2.00000;,
0.16699; 0.00000;,
1.00000; 0.00000;,
1.00000; 2.00000;,
0.00000; 2.00000;,
1.00000; 0.00000;,
1.00000; 2.00000;,
0.16699; 0.00000;,
1.00000; 0.00000;,
0.00000; 2.00000;,
0.00000; 5.00000;,
0.00000; 0.00000;,
0.50000; 0.00000;,
0.50000; 0.00000;,
1.00000; 0.00000;,
1.00000; 5.00000;,
0.00000; -1.00000;,
1.00000; -1.00000;,
0.50000; 4.00000;,
0.00000; 5.00000;,
0.50000; 0.00000;,
1.00000; 5.00000;,
0.50000; 4.00000;,
1.00000; -1.00000;,
1.00000; 4.00000;,
0.00000; -1.00000;,
0.50000; 4.00000;,
0.00000; 4.00000;,
0.50000; -0.90381;,
1.00000; -0.90381;,
0.50000; 2.09619;,
1.00000; 2.09619;,
0.50000; -0.90381;,
0.50000; 2.09619;,
0.00000; 2.09619;,
0.00000; -0.90381;,
0.50000; 1.90381;,
0.00000; 1.90381;,
0.50000; -1.09619;,
0.00000; -1.09619;,
0.50000; 1.90381;,
0.50000; -1.09619;,
1.00000; 1.90381;,
1.00000; -1.09619;;
}

}

}

Frame frmpart17_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part17 {
528;
-18.40500; -2.28000; -36.79500;,
-11.04500; -2.28000; -41.04500;,
-18.40500; -0.28000; -36.79500;,
-11.04500; -0.23000; -41.04500;,
-18.40500; -1.88000; -33.91000;,
-18.40500; -0.28000; -36.79500;,
-18.40500; -1.88000; -31.34500;,
-18.40500; -0.28000; -28.29500;,
-18.40500; -2.28000; -36.79500;,
-18.40500; -2.28000; -33.91000;,
-18.40500; -2.28000; -28.29500;,
-18.40500; -2.28000; -31.34500;,
-18.40500; -2.28000; -19.79500;,
-18.40500; -2.28000; -28.29500;,
-18.40500; -0.28000; -19.79500;,
-18.40500; -0.28000; -28.29500;,
-11.04500; -2.28000; -41.04500;,
-3.72500; -2.28000; -40.59500;,
-11.04500; -0.23000; -41.04500;,
-3.72500; -0.53000; -40.59500;,
0.23500; -0.08000; -33.24500;,
0.23500; -2.28000; -33.24500;,
-3.68000; -0.18000; -28.29500;,
-3.68000; -2.28000; -28.29500;,
0.31500; -0.78000; -30.60500;,
0.80000; -0.78000; -32.68000;,
0.31500; 0.02000; -30.60500;,
0.80000; 0.02000; -32.68000;,
-8.51500; 0.57000; -41.95500;,
-5.99000; -0.68000; -42.86000;,
-5.99000; 1.02000; -42.86000;,
-11.04500; -0.54500; -41.04500;,
-5.99000; -0.68000; -42.86000;,
-8.51500; 0.57000; -41.95500;,
-21.82500; -0.74500; -13.27000;,
-18.40500; -2.28000; -19.79500;,
-21.82500; 0.65500; -13.27000;,
-18.40500; -0.28000; -19.79500;,
-25.76500; 0.72000; -7.04500;,
-25.76500; -3.28000; -7.04500;,
-21.82500; 0.65500; -13.27000;,
-21.82500; -0.74500; -13.27000;,
2.08500; 0.22000; -24.64500;,
-3.68000; -0.18000; -28.29500;,
2.08500; -0.78000; -24.64500;,
-3.68000; -2.28000; -28.29500;,
2.08500; -0.78000; -24.64500;,
3.76000; -0.78000; -26.58500;,
2.08500; 0.22000; -24.64500;,
3.76000; 0.22000; -26.58500;,
3.76000; -0.78000; -26.58500;,
0.31500; -0.78000; -30.60500;,
3.76000; 0.22000; -26.58500;,
0.31500; 0.02000; -30.60500;,
-3.68000; -4.28000; 31.20500;,
-11.04500; -4.28000; 35.45500;,
-3.68000; -2.28000; 31.20500;,
-11.04500; -3.28000; 35.45500;,
-13.26500; -4.28000; 33.82500;,
-13.26500; -3.18500; 33.82500;,
-11.04500; -4.28000; 35.45500;,
-11.04500; -3.28000; 35.45500;,
-16.70500; -2.27000; 32.18500;,
-18.40500; -4.28000; 31.20500;,
-18.40500; -2.28000; 31.20500;,
-7.36500; -3.28000; 29.08000;,
-3.68000; -4.28000; 31.20500;,
-3.68000; -3.28000; 31.20500;,
-18.40500; -2.28000; 31.20500;,
-18.40500; -3.28000; 22.70500;,
-18.40500; -1.28000; 22.70500;,
-16.70500; -4.28000; 32.18500;,
-18.40500; -4.28000; 31.20500;,
3.68000; -3.28000; 35.45500;,
-3.68000; -3.28000; 31.20500;,
3.68000; -1.28000; 35.45500;,
-3.68000; -2.28000; 31.20500;,
11.04000; -3.28000; 31.20500;,
3.68000; -3.28000; 35.45500;,
11.04000; -1.28000; 31.20500;,
3.68000; -1.28000; 35.45500;,
2.72000; 1.38500; 0.23000;,
2.72000; 0.58500; 0.23000;,
2.60000; 1.38500; -0.04000;,
2.60000; 0.78500; -0.04000;,
2.72000; 0.58500; 0.23000;,
2.80000; 0.58500; -3.64000;,
2.60000; 0.78500; -0.04000;,
2.60000; 0.78500; -0.04000;,
2.80000; 0.58500; -3.64000;,
2.60000; 0.78500; -3.44000;,
1.40000; 1.38500; -0.04000;,
2.60000; 1.38500; -0.04000;,
1.40000; 0.78500; -0.04000;,
2.60000; 0.78500; -0.04000;,
2.60000; 1.38500; -3.44000;,
1.40000; 1.38500; -3.44000;,
2.60000; 0.78500; -3.44000;,
1.40000; 0.78500; -3.44000;,
2.80000; 1.38500; -3.64000;,
2.60000; 1.38500; -3.44000;,
2.80000; 0.58500; -3.64000;,
2.60000; 0.78500; -3.44000;,
-6.15500; 1.38500; 3.59500;,
-6.15500; 0.58500; 3.59500;,
-5.95500; 1.38500; 3.39500;,
-5.95500; 0.78500; 3.39500;,
-6.15500; 0.58500; 3.59500;,
-1.55500; 0.58500; 3.59500;,
-5.95500; 0.78500; 3.39500;,
-1.75500; 0.78500; 3.39500;,
-1.75500; 0.78500; 3.39500;,
-1.55500; 0.58500; 3.59500;,
-1.75500; 1.38500; 3.39500;,
-1.55500; 1.38500; 3.59500;,
-5.95500; 1.38500; 2.19500;,
-5.95500; 1.38500; 3.39500;,
-5.95500; 0.78500; 2.19500;,
-5.95500; 0.78500; 3.39500;,
-1.75500; 1.38500; 3.39500;,
-1.75500; 1.38500; 2.19500;,
-1.75500; 0.78500; 3.39500;,
-1.75500; 0.78500; 2.19500;,
-6.15500; 1.38500; 3.59500;,
-9.61500; 1.38500; 1.38500;,
-6.15500; 0.58500; 3.59500;,
-9.61500; 0.58500; 1.38500;,
2.72000; 1.38500; 0.23000;,
-1.55500; 1.38500; 3.59500;,
2.72000; 0.58500; 0.23000;,
-1.55500; 0.58500; 3.59500;,
-9.61500; 1.38500; 1.38500;,
-10.76000; 1.38500; -0.48000;,
-9.61500; 0.58500; 1.38500;,
-10.76000; 0.58500; -0.48000;,
-10.76000; 1.38500; -0.48000;,
-10.56000; 1.38500; -0.68000;,
-10.76000; 0.58500; -0.48000;,
-10.56000; 0.78500; -0.68000;,
-10.56000; 0.78500; -0.68000;,
-10.56000; 1.38500; -0.68000;,
-9.56000; 0.78500; -0.68000;,
-9.56000; 1.38500; -0.68000;,
-10.56000; 1.38500; -3.68000;,
-10.76000; 1.38500; -3.88000;,
-10.56000; 0.78500; -3.68000;,
-10.76000; 0.58500; -3.88000;,
-10.76000; 0.58500; -3.88000;,
-10.76000; 0.58500; -0.48000;,
-10.56000; 0.78500; -3.68000;,
-10.56000; 0.78500; -0.68000;,
-10.56000; 0.78500; -3.68000;,
-9.56000; 0.78500; -3.68000;,
-10.56000; 1.38500; -3.68000;,
-9.56000; 1.38500; -3.68000;,
-10.76000; 1.38500; -3.88000;,
-10.76000; 1.58500; -6.28000;,
-10.76000; 0.58500; -3.88000;,
-10.76000; 0.58500; -6.28000;,
1.93500; 0.89500; -6.24500;,
2.80000; 1.38500; -3.64000;,
1.93500; 0.43000; -6.24500;,
2.80000; 0.58500; -3.64000;,
-10.76000; 1.58500; -6.28000;,
-9.43500; 1.58500; -7.01500;,
-9.63500; 0.58500; -7.41500;,
2.80000; 1.38500; -3.64000;,
1.93500; 0.89500; -6.24500;,
1.93000; 1.32500; -6.17000;,
-9.43500; 1.58500; -7.01500;,
-6.59000; 1.78500; -8.48500;,
-9.63500; 0.58500; -7.41500;,
-10.76000; 1.58500; -6.28000;,
-9.63500; 0.58500; -7.41500;,
-10.76000; 0.58500; -6.28000;,
-6.59000; 1.78500; -8.48500;,
-3.75000; 1.38500; -9.95500;,
-3.95000; 0.58500; -10.35500;,
-9.63500; 0.58500; -7.41500;,
-6.59000; 1.78500; -8.48500;,
-3.95000; 0.58500; -10.35500;,
-3.95000; 0.58500; -10.35500;,
-3.75000; 1.38500; -9.95500;,
-1.67500; 0.58500; -9.96000;,
-11.04500; 0.72000; -0.62000;,
-11.04500; 0.92000; -7.04500;,
-11.04500; -1.28000; -0.62000;,
-11.04500; -0.28000; -7.04500;,
-9.73500; 0.72000; 1.51000;,
-9.73500; -1.28000; 1.51000;,
-6.15500; 0.98500; 3.79500;,
-6.15500; -0.21500; 3.79500;,
-11.04500; 0.72000; -0.62000;,
-11.04500; -1.28000; -0.62000;,
-9.73500; 0.72000; 1.51000;,
-9.73500; -1.28000; 1.51000;,
-0.46000; 0.78500; -5.48500;,
-0.53500; 0.78500; -6.56500;,
-0.46000; 1.58500; -5.48500;,
-0.53500; 1.58500; -6.56500;,
1.81500; -0.28000; -8.12000;,
1.13000; 0.93000; -7.03000;,
1.13000; 0.38500; -7.03000;,
1.81500; 1.12000; -8.12000;,
1.13500; 1.22500; -7.11000;,
1.13000; 0.93000; -7.03000;,
-3.68000; 0.92000; -11.29500;,
1.81500; -0.28000; -8.12000;,
-3.68000; -0.28000; -11.29500;,
1.81500; 1.12000; -8.12000;,
-3.68000; 0.92000; -11.29500;,
-11.04500; -0.28000; -7.04500;,
-11.04500; 0.92000; -7.04500;,
1.81500; 1.12000; -8.12000;,
-6.15500; -0.21500; 3.79500;,
-3.68000; 0.92000; 3.95000;,
-6.15500; 0.98500; 3.79500;,
-3.68000; -0.28000; -11.29500;,
-0.95500; 0.72000; 3.79500;,
-3.68000; -0.28000; 3.95000;,
-0.95500; -0.28000; 3.79500;,
-3.68000; -0.28000; 3.95000;,
-0.95500; 0.72000; 3.79500;,
3.08000; -0.28000; 1.05500;,
3.08000; 0.72000; 1.05500;,
-3.68000; 0.92000; 3.95000;,
3.08000; -0.28000; -4.74500;,
3.08000; 0.72000; 1.05500;,
3.08000; -0.28000; 1.05500;,
-0.95500; -0.28000; 3.79500;,
3.08000; 1.12000; -4.74500;,
3.68000; -0.28000; -7.04500;,
3.68000; 1.12000; -7.04500;,
3.08000; 1.12000; -4.74500;,
3.68000; 1.12000; -7.04500;,
2.85500; -0.28000; -7.52000;,
2.84500; 1.12000; -7.50500;,
3.08000; -0.28000; -4.74500;,
2.84500; 1.12000; -7.50500;,
1.93500; 0.43000; -6.24500;,
1.93500; 0.89500; -6.24500;,
3.68000; -0.28000; -7.04500;,
2.85500; -0.28000; -7.52000;,
3.68000; 1.12000; -7.04500;,
2.84500; 1.12000; -7.50500;,
1.93500; 0.89500; -6.24500;,
1.93000; 1.32500; -6.17000;,
2.85500; -0.28000; -7.52000;,
1.93500; 0.43000; -6.24500;,
2.84500; 1.12000; -7.50500;,
1.93500; 0.43000; -6.24500;,
-0.13500; 0.78500; -6.15000;,
1.93500; 0.89500; -6.24500;,
-0.13500; 1.48500; -6.15000;,
1.93500; 0.89500; -6.24500;,
-0.13500; 1.48500; -6.15000;,
1.93000; 1.32500; -6.17000;,
-0.53500; 0.78500; -6.56500;,
1.13000; 0.38500; -7.03000;,
-0.53500; 1.58500; -6.56500;,
1.13000; 0.93000; -7.03000;,
-0.53500; 1.58500; -6.56500;,
1.13000; 0.93000; -7.03000;,
1.13500; 1.22500; -7.11000;,
18.40000; -1.28000; 9.95500;,
18.40000; -2.28000; 18.45500;,
18.40000; 0.29500; 9.95500;,
18.40000; -0.28000; 18.45500;,
-18.40500; -3.28000; 22.70500;,
-16.40500; -3.01000; 20.00500;,
-18.40500; -1.28000; 22.70500;,
-16.40500; -1.01000; 20.00500;,
-16.40500; -3.01000; 20.00500;,
-18.40500; -3.28000; 14.20500;,
-16.40500; -1.01000; 20.00500;,
-18.40500; -0.28000; 14.20500;,
-18.40500; -3.28000; 14.20500;,
-21.16500; -3.28000; 9.09500;,
-18.40500; -0.28000; 14.20500;,
-21.16500; -0.28000; 9.09500;,
-22.43500; -0.28000; 8.03000;,
-21.16500; -0.28000; 9.09500;,
-22.43500; -3.28000; 8.03000;,
-21.16500; -3.28000; 9.09500;,
-22.43500; -3.28000; 8.03000;,
-26.75000; -3.28000; 7.01000;,
-22.43500; -0.28000; 8.03000;,
-26.75000; -0.28000; 7.01000;,
34.49500; -1.08000; -25.23000;,
39.78000; -0.88000; -19.38500;,
35.78500; 2.92000; -23.86500;,
35.78500; 2.92000; -23.86500;,
39.78000; -0.88000; -19.38500;,
39.78000; 0.12000; -19.38500;,
34.49500; -1.08000; -25.23000;,
35.78500; 2.92000; -23.86500;,
31.96500; -1.08000; -27.71000;,
31.96500; -1.08000; -27.71000;,
35.78500; 2.92000; -23.86500;,
31.96500; 2.92000; -27.71000;,
31.96500; 2.92000; -27.71000;,
29.72000; 2.87000; -30.58000;,
31.96500; -1.08000; -27.71000;,
29.72000; -0.83000; -30.58000;,
39.18500; 1.59500; -18.31500;,
35.78500; 2.92000; -23.86500;,
39.78000; 0.12000; -19.38500;,
25.76000; -0.33500; 5.70500;,
31.87000; 0.12000; 2.57000;,
25.76000; -2.19000; 5.70500;,
31.87000; -1.58000; 2.57000;,
35.92000; 1.12000; -5.43000;,
35.92000; -0.38000; -5.43000;,
33.87000; -0.08000; 1.16000;,
33.87000; -1.58000; 1.16000;,
34.97000; -0.08000; 6.36000;,
36.97000; -0.08000; 6.36000;,
34.97000; -1.58000; 6.36000;,
36.97000; -1.58000; 6.36000;,
34.97000; -0.08000; 6.36000;,
34.97000; -1.58000; 6.36000;,
32.47000; -0.08000; 5.86000;,
32.47000; -1.58000; 5.86000;,
32.47000; -0.08000; 5.86000;,
32.47000; -1.58000; 5.86000;,
31.87000; 0.12000; 2.57000;,
31.87000; -1.58000; 2.57000;,
33.67000; -0.08000; 4.56000;,
33.87000; -0.08000; 1.16000;,
33.67000; -1.58000; 4.56000;,
33.87000; -1.58000; 1.16000;,
33.67000; -0.08000; 4.56000;,
33.67000; -1.58000; 4.56000;,
36.97000; -0.08000; 4.76000;,
36.97000; -1.58000; 4.76000;,
36.97000; -1.58000; 5.16500;,
36.97000; -1.29000; 5.02000;,
36.97000; -1.58000; 4.76000;,
36.97000; -0.93000; 5.00500;,
36.97000; -0.08000; 4.76000;,
36.97000; -1.58000; 6.36000;,
36.97000; -1.32500; 6.09000;,
36.97000; -1.58000; 5.92500;,
36.97000; -0.94000; 6.11000;,
36.97000; -0.08000; 6.36000;,
36.97000; -0.68000; 5.92500;,
36.97000; -0.64500; 5.23000;,
36.97000; -0.53000; 5.56500;,
18.40000; -3.28000; 31.20500;,
11.04000; -3.28000; 31.20500;,
18.40000; -1.28000; 31.20500;,
11.04000; -1.28000; 31.20500;,
25.76000; -3.28000; 22.70500;,
18.40000; -3.28000; 31.20500;,
25.76000; -1.28000; 22.70500;,
18.40000; -1.28000; 31.20500;,
18.40000; -2.28000; 18.45500;,
25.76000; -3.28000; 22.70500;,
18.40000; -0.28000; 18.45500;,
25.76000; -1.28000; 22.70500;,
36.80500; 2.12000; -16.08000;,
39.18500; 1.59500; -18.31500;,
38.17000; 0.12000; -17.18500;,
36.80500; 2.12000; -16.08000;,
38.17000; 0.12000; -17.18500;,
36.20500; 0.65000; -16.08000;,
44.20000; 1.52000; -21.29000;,
43.86000; -1.08000; -17.09500;,
43.86000; 0.32000; -17.09500;,
43.86000; 1.52000; -17.09500;,
41.28500; -0.08000; -18.19000;,
43.86000; 0.32000; -17.09500;,
41.19500; -0.08000; -16.31000;,
44.20000; -1.08000; -21.29000;,
41.28500; -0.08000; -18.19000;,
43.12000; -0.88000; -18.99000;,
43.12000; 0.32000; -18.99000;,
43.12000; 0.32000; -18.99000;,
43.86000; 0.32000; -17.09500;,
41.28500; -0.08000; -18.19000;,
41.19500; -1.08000; -16.31000;,
43.86000; 0.32000; -17.09500;,
43.86000; -1.08000; -17.09500;,
41.28500; -0.88000; -18.19000;,
38.17000; -1.08000; -17.18500;,
41.19500; -0.08000; -16.31000;,
41.19500; -1.08000; -16.31000;,
41.19500; -0.08000; -16.31000;,
41.19500; -0.08000; -16.31000;,
39.78000; 0.12000; -19.38500;,
41.28500; -0.08000; -18.19000;,
38.17000; 0.12000; -17.18500;,
39.78000; 0.12000; -19.38500;,
41.28500; -0.88000; -18.19000;,
41.28500; -0.08000; -18.19000;,
38.17000; 0.12000; -17.18500;,
39.78000; 0.12000; -19.38500;,
41.19500; -0.08000; -16.31000;,
39.78000; 0.12000; -19.38500;,
38.17000; 0.12000; -17.18500;,
39.18500; 1.59500; -18.31500;,
39.78000; -0.88000; -19.38500;,
38.17000; 0.12000; -17.18500;,
38.17000; -1.08000; -17.18500;,
36.20500; 0.65000; -16.08000;,
36.20500; -1.08000; -16.08000;,
38.30000; -0.68000; -13.49500;,
36.20500; 0.65000; -16.08000;,
36.20500; -1.08000; -16.08000;,
38.30000; 1.32000; -13.49500;,
36.80500; 2.12000; -16.08000;,
36.20500; 0.65000; -16.08000;,
38.30000; 1.32000; -13.49500;,
37.40500; -0.98000; -8.08000;,
35.92000; -0.38000; -5.43000;,
37.40500; 1.12000; -8.08000;,
35.92000; 1.12000; -5.43000;,
38.80500; -0.98000; -10.28000;,
37.40500; -0.98000; -8.08000;,
38.80500; 1.12000; -10.28000;,
37.40500; 1.12000; -8.08000;,
38.30000; -0.68000; -13.49500;,
38.80500; -0.98000; -10.28000;,
38.30000; 1.32000; -13.49500;,
38.80500; 1.12000; -10.28000;,
25.92500; 0.40500; -38.89000;,
27.35500; 0.32000; -34.27000;,
25.92500; 1.66000; -38.89000;,
25.92500; 1.66000; -38.89000;,
27.35500; 0.32000; -34.27000;,
27.35500; 1.81000; -35.07500;,
25.92500; 1.66000; -38.89000;,
26.22000; 1.83500; -44.14500;,
25.92500; 0.40500; -38.89000;,
26.22000; -0.68000; -44.14500;,
27.35500; 0.32000; -34.27000;,
23.75500; 0.52000; -36.07000;,
27.35500; -0.88000; -34.27000;,
23.75500; -0.68000; -36.07000;,
23.75500; -0.68000; -36.07000;,
21.69500; 0.12000; -39.62000;,
21.69500; -0.68000; -39.62000;,
27.35500; 1.81000; -35.07500;,
23.75500; 0.52000; -36.07000;,
27.35500; 0.32000; -34.27000;,
23.75500; 0.52000; -36.07000;,
21.97500; 0.92000; -39.90000;,
21.69500; 0.12000; -39.62000;,
23.75500; 0.52000; -36.07000;,
29.69000; 2.62000; -36.17500;,
29.69000; 0.62000; -36.17500;,
30.39500; 2.53500; -36.88500;,
30.39500; 0.62000; -36.88500;,
33.22500; 2.12000; -34.05500;,
33.22500; 0.20500; -34.05500;,
30.39500; 2.83500; -35.47000;,
30.39500; 0.62000; -35.47000;,
28.48500; 1.12000; -33.13500;,
30.39500; 2.83500; -35.47000;,
28.48500; -0.88000; -33.13500;,
30.39500; 0.62000; -35.47000;,
28.48500; 1.12000; -33.13500;,
29.15500; 2.55000; -33.07000;,
30.39500; 2.83500; -35.47000;,
29.72000; -0.83000; -30.58000;,
28.48500; 1.12000; -33.13500;,
28.48500; -0.88000; -33.13500;,
28.48500; 1.12000; -33.13500;,
29.72000; 2.87000; -30.58000;,
29.15500; 2.55000; -33.07000;,
33.22500; 2.12000; -34.05500;,
30.39500; 2.53500; -36.88500;,
33.22500; 0.62000; -34.05500;,
29.72000; 2.87000; -30.58000;,
29.69000; 0.62000; -36.17500;,
27.35500; 0.32000; -34.27000;,
27.35500; -0.88000; -34.27000;,
30.39500; 0.62000; -36.88500;,
29.69000; 2.62000; -36.17500;,
27.35500; 1.81000; -35.07500;,
27.35500; 0.32000; -34.27000;,
29.69000; 2.62000; -36.17500;,
-7.56000; -5.81000; 39.00500;,
-17.51000; -5.91000; 40.63000;,
-7.56000; -2.81000; 39.00500;,
-17.51000; -3.91000; 40.63000;,
3.68000; -3.28000; 35.45500;,
-7.56000; -5.81000; 39.00500;,
3.68000; -1.28000; 35.45500;,
-7.56000; -2.81000; 39.00500;,
-3.68000; -4.28000; 31.20500;,
-7.56000; -5.81000; 39.00500;,
-3.68000; -2.28000; 31.20500;,
-7.56000; -2.81000; 39.00500;,
-15.02500; -4.28000; 36.27500;,
-17.61000; -4.92000; 40.64999;,
-15.02500; -3.28000; 36.27500;,
-17.61000; -3.92000; 40.64999;,
-15.89500; -4.92000; 41.68000;,
-20.61000; -6.25500; 45.85000;,
-15.89500; -3.92000; 41.68000;,
-20.61000; -5.25500; 45.85000;,
-15.89500; -3.92000; 41.68000;,
-17.61000; -3.92000; 40.64999;,
-15.89500; -4.92000; 41.68000;,
-17.61000; -4.92000; 40.64999;,
-20.21000; -5.36500; 41.45000;,
-17.01500; -4.28000; 35.12500;,
-20.21000; -3.66500; 41.45000;,
-17.01500; -2.27000; 35.12500;,
-20.21000; -3.66500; 41.45000;,
-18.49500; -4.36500; 42.48000;,
-20.21000; -5.36500; 41.45000;,
-18.49500; -5.36500; 42.48000;,
-20.61000; -5.25500; 45.85000;,
-18.49500; -5.36500; 42.48000;,
-18.49500; -4.36500; 42.48000;,
-20.21000; -3.66500; 41.45000;,
-19.04000; -3.66500; 42.62500;,
-18.49500; -4.36500; 42.48000;,
-20.61000; -5.25500; 45.85000;,
-18.49500; -4.36500; 42.48000;,
-19.04000; -3.66500; 42.62500;,
-20.61000; -6.25500; 45.85000;,
18.40000; 0.29500; 9.95500;,
25.76000; -0.33500; 5.70500;,
18.40000; -1.28000; 9.95500;,
25.76000; -2.19000; 5.70500;;

250;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 7, 5, 6;,
3; 9, 4, 8;,
3; 5, 8, 4;,
3; 11, 10, 6;,
3; 10, 7, 6;,
3; 14, 13, 12;,
3; 15, 13, 14;,
3; 18, 17, 16;,
3; 19, 17, 18;,
3; 22, 21, 20;,
3; 23, 21, 22;,
3; 26, 25, 24;,
3; 27, 25, 26;,
3; 30, 29, 28;,
3; 33, 32, 31;,
3; 36, 35, 34;,
3; 37, 35, 36;,
3; 40, 39, 38;,
3; 41, 39, 40;,
3; 44, 43, 42;,
3; 45, 43, 44;,
3; 48, 47, 46;,
3; 49, 47, 48;,
3; 52, 51, 50;,
3; 53, 51, 52;,
3; 56, 55, 54;,
3; 57, 55, 56;,
3; 60, 59, 58;,
3; 61, 59, 60;,
3; 64, 63, 62;,
3; 67, 66, 65;,
3; 70, 69, 68;,
3; 62, 63, 71;,
3; 68, 69, 72;,
3; 75, 74, 73;,
3; 76, 74, 75;,
3; 79, 78, 77;,
3; 80, 78, 79;,
3; 83, 82, 81;,
3; 84, 82, 83;,
3; 87, 86, 85;,
3; 90, 89, 88;,
3; 93, 92, 91;,
3; 94, 92, 93;,
3; 97, 96, 95;,
3; 98, 96, 97;,
3; 101, 100, 99;,
3; 102, 100, 101;,
3; 105, 104, 103;,
3; 106, 104, 105;,
3; 109, 108, 107;,
3; 110, 108, 109;,
3; 113, 112, 111;,
3; 114, 112, 113;,
3; 117, 116, 115;,
3; 118, 116, 117;,
3; 121, 120, 119;,
3; 122, 120, 121;,
3; 125, 124, 123;,
3; 126, 124, 125;,
3; 129, 128, 127;,
3; 130, 128, 129;,
3; 133, 132, 131;,
3; 134, 132, 133;,
3; 137, 136, 135;,
3; 138, 136, 137;,
3; 141, 140, 139;,
3; 142, 140, 141;,
3; 145, 144, 143;,
3; 146, 144, 145;,
3; 149, 148, 147;,
3; 150, 148, 149;,
3; 153, 152, 151;,
3; 154, 152, 153;,
3; 157, 156, 155;,
3; 158, 156, 157;,
3; 161, 160, 159;,
3; 162, 160, 161;,
3; 165, 164, 163;,
3; 168, 167, 166;,
3; 171, 170, 169;,
3; 174, 173, 172;,
3; 177, 176, 175;,
3; 180, 179, 178;,
3; 183, 182, 181;,
3; 186, 185, 184;,
3; 187, 185, 186;,
3; 190, 189, 188;,
3; 191, 189, 190;,
3; 194, 193, 192;,
3; 195, 193, 194;,
3; 198, 197, 196;,
3; 199, 197, 198;,
3; 202, 201, 200;,
3; 205, 204, 203;,
3; 208, 207, 206;,
3; 200, 201, 209;,
3; 212, 211, 210;,
3; 206, 207, 213;,
3; 216, 215, 214;,
3; 210, 211, 217;,
3; 220, 219, 218;,
3; 214, 215, 221;,
3; 224, 223, 222;,
3; 218, 219, 225;,
3; 228, 227, 226;,
3; 222, 223, 229;,
3; 232, 231, 230;,
3; 226, 227, 233;,
3; 236, 235, 234;,
3; 230, 231, 237;,
3; 240, 239, 238;,
3; 243, 242, 241;,
3; 246, 245, 244;,
3; 249, 248, 247;,
3; 252, 251, 250;,
3; 253, 251, 252;,
3; 256, 255, 254;,
3; 259, 258, 257;,
3; 260, 258, 259;,
3; 263, 262, 261;,
3; 266, 265, 264;,
3; 267, 265, 266;,
3; 270, 269, 268;,
3; 271, 269, 270;,
3; 274, 273, 272;,
3; 275, 273, 274;,
3; 278, 277, 276;,
3; 279, 277, 278;,
3; 282, 281, 280;,
3; 283, 281, 282;,
3; 286, 285, 284;,
3; 287, 285, 286;,
3; 290, 289, 288;,
3; 293, 292, 291;,
3; 296, 295, 294;,
3; 299, 298, 297;,
3; 302, 301, 300;,
3; 303, 301, 302;,
3; 306, 305, 304;,
3; 309, 308, 307;,
3; 310, 308, 309;,
3; 313, 312, 311;,
3; 313, 314, 312;,
3; 317, 316, 315;,
3; 318, 316, 317;,
3; 321, 320, 319;,
3; 322, 320, 321;,
3; 325, 324, 323;,
3; 326, 324, 325;,
3; 329, 328, 327;,
3; 330, 328, 329;,
3; 333, 332, 331;,
3; 334, 332, 333;,
3; 337, 336, 335;,
3; 339, 338, 337;,
3; 342, 341, 340;,
3; 341, 343, 340;,
3; 337, 338, 336;,
3; 343, 345, 344;,
3; 340, 343, 344;,
3; 339, 347, 346;,
3; 347, 344, 345;,
3; 344, 347, 339;,
3; 339, 346, 338;,
3; 350, 349, 348;,
3; 351, 349, 350;,
3; 354, 353, 352;,
3; 355, 353, 354;,
3; 358, 357, 356;,
3; 359, 357, 358;,
3; 362, 361, 360;,
3; 365, 364, 363;,
3; 368, 367, 366;,
3; 369, 368, 366;,
3; 372, 371, 370;,
3; 366, 367, 373;,
3; 376, 375, 374;,
3; 379, 378, 377;,
3; 382, 381, 380;,
3; 374, 375, 383;,
3; 386, 385, 384;,
3; 380, 381, 387;,
3; 390, 389, 388;,
3; 384, 385, 391;,
3; 394, 393, 392;,
3; 397, 396, 395;,
3; 400, 399, 398;,
3; 392, 393, 401;,
3; 404, 403, 402;,
3; 405, 403, 404;,
3; 408, 407, 406;,
3; 411, 410, 409;,
3; 406, 407, 412;,
3; 415, 414, 413;,
3; 416, 414, 415;,
3; 419, 418, 417;,
3; 420, 418, 419;,
3; 423, 422, 421;,
3; 424, 422, 423;,
3; 427, 426, 425;,
3; 430, 429, 428;,
3; 433, 432, 431;,
3; 434, 432, 433;,
3; 437, 436, 435;,
3; 438, 436, 437;,
3; 441, 440, 439;,
3; 444, 443, 442;,
3; 447, 446, 445;,
3; 439, 440, 448;,
3; 451, 450, 449;,
3; 452, 450, 451;,
3; 455, 454, 453;,
3; 456, 454, 455;,
3; 459, 458, 457;,
3; 460, 458, 459;,
3; 463, 462, 461;,
3; 466, 465, 464;,
3; 469, 468, 467;,
3; 472, 471, 470;,
3; 464, 465, 473;,
3; 476, 475, 474;,
3; 477, 471, 472;,
3; 480, 479, 478;,
3; 474, 475, 481;,
3; 484, 483, 482;,
3; 485, 483, 484;,
3; 488, 487, 486;,
3; 489, 487, 488;,
3; 492, 491, 490;,
3; 493, 491, 492;,
3; 496, 495, 494;,
3; 497, 495, 496;,
3; 500, 499, 498;,
3; 501, 499, 500;,
3; 504, 503, 502;,
3; 505, 503, 504;,
3; 508, 507, 506;,
3; 509, 507, 508;,
3; 512, 511, 510;,
3; 513, 511, 512;,
3; 516, 515, 514;,
3; 519, 518, 517;,
3; 522, 521, 520;,
3; 514, 515, 523;,
3; 526, 525, 524;,
3; 527, 525, 526;;

MeshMaterialList {
1;
250;
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0;
Material mat17 {
  0.687500; 0.687500; 0.687500; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "766BA1C_c.bmp";
  }
  DiffuseTextureFileName  {
     "766BA1C_c.bmp";
  }
  FS10Material {
    0.687500; 0.687500; 0.687500; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "766BA1C_c.bmp";
    }
  }
}
}

MeshNormals {
528;
0.50006; 0.00000; 0.86599;,
0.50006; 0.00000; 0.86599;,
0.50006; 0.00000; 0.86599;,
0.50006; 0.00000; 0.86599;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
-0.06136; 0.00000; 0.99812;,
-0.06136; 0.00000; 0.99812;,
-0.06136; 0.00000; 0.99812;,
-0.06136; 0.00000; 0.99812;,
-0.78433; 0.00000; -0.62034;,
-0.78433; 0.00000; -0.62034;,
-0.78433; 0.00000; -0.62034;,
-0.78433; 0.00000; -0.62034;,
0.97375; 0.00000; 0.22760;,
0.97375; 0.00000; 0.22760;,
0.97375; 0.00000; 0.22760;,
0.97375; 0.00000; 0.22760;,
0.33740; 0.00000; 0.94136;,
0.33740; 0.00000; 0.94136;,
0.33740; 0.00000; 0.94136;,
0.33796; 0.00128; 0.94116;,
0.33796; 0.00128; 0.94116;,
0.33796; 0.00128; 0.94116;,
0.88571; 0.00000; 0.46424;,
0.88571; 0.00000; 0.46424;,
0.88571; 0.00000; 0.46424;,
0.88571; 0.00000; 0.46424;,
0.84497; 0.00000; 0.53481;,
0.84497; 0.00000; 0.53481;,
0.84497; 0.00000; 0.53481;,
0.84497; 0.00000; 0.53481;,
-0.53493; 0.00000; 0.84490;,
-0.53493; 0.00000; 0.84490;,
-0.53493; 0.00000; 0.84490;,
-0.53493; 0.00000; 0.84490;,
0.75691; 0.00000; 0.65352;,
0.75691; 0.00000; 0.65352;,
0.75691; 0.00000; 0.65352;,
0.75691; 0.00000; 0.65352;,
0.75932; 0.00000; -0.65071;,
0.75932; 0.00000; -0.65071;,
0.75932; 0.00000; -0.65071;,
0.75932; 0.00000; -0.65071;,
-0.49981; 0.00000; -0.86614;,
-0.49981; 0.00000; -0.86614;,
-0.49981; 0.00000; -0.86614;,
-0.49981; 0.00000; -0.86614;,
0.59184; 0.00000; -0.80606;,
0.59184; 0.00000; -0.80606;,
0.59184; 0.00000; -0.80606;,
0.59184; 0.00000; -0.80606;,
0.49943; 0.00000; -0.86636;,
0.49943; 0.00000; -0.86636;,
0.49943; 0.00000; -0.86636;,
-0.49955; 0.00000; 0.86628;,
-0.49955; 0.00000; 0.86628;,
-0.49955; 0.00000; 0.86628;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
0.49943; 0.00000; -0.86636;,
1.00000; 0.00000; 0.00000;,
0.50006; 0.00000; -0.86599;,
0.50006; 0.00000; -0.86599;,
0.50006; 0.00000; -0.86599;,
0.50006; 0.00000; -0.86599;,
-0.50006; 0.00000; -0.86599;,
-0.50006; 0.00000; -0.86599;,
-0.50006; 0.00000; -0.86599;,
-0.50006; 0.00000; -0.86599;,
0.91381; 0.00000; -0.40614;,
0.91381; 0.00000; -0.40614;,
0.91381; 0.00000; -0.40614;,
0.91381; 0.00000; -0.40614;,
0.84676; 0.53169; 0.01750;,
0.84676; 0.53169; 0.01750;,
0.84676; 0.53169; 0.01750;,
0.70711; 0.70711; 0.00000;,
0.70711; 0.70711; 0.00000;,
0.70711; 0.70711; 0.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;,
0.00000; 0.70711; 0.70711;,
0.00000; 0.70711; 0.70711;,
0.00000; 0.70711; 0.70711;,
0.00000; 0.70711; 0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-0.53829; 0.00000; 0.84276;,
-0.53829; 0.00000; 0.84276;,
-0.53829; 0.00000; 0.84276;,
-0.53829; 0.00000; 0.84276;,
0.61851; 0.00000; 0.78578;,
0.61851; 0.00000; 0.78578;,
0.61851; 0.00000; 0.78578;,
0.61851; 0.00000; 0.78578;,
-0.85221; 0.00000; 0.52321;,
-0.85221; 0.00000; 0.52321;,
-0.85221; 0.00000; 0.52321;,
-0.85221; 0.00000; 0.52321;,
-0.70711; 0.00000; -0.70711;,
-0.70711; 0.00000; -0.70711;,
-0.70711; 0.00000; -0.70711;,
-0.70711; 0.00000; -0.70711;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.70711; 0.00000;,
-0.70711; 0.70711; 0.00000;,
-0.70711; 0.70711; 0.00000;,
-0.70711; 0.70711; 0.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
0.94905; 0.00000; -0.31513;,
0.94905; 0.00000; -0.31513;,
0.94905; 0.00000; -0.31513;,
0.94905; 0.00000; -0.31513;,
-0.44288; 0.40794; -0.79840;,
-0.44288; 0.40794; -0.79840;,
-0.44288; 0.40794; -0.79840;,
0.94298; 0.06780; -0.32587;,
0.94298; 0.06780; -0.32587;,
0.94298; 0.06780; -0.32587;,
-0.44158; 0.40796; -0.79911;,
-0.44158; 0.40796; -0.79911;,
-0.44158; 0.40796; -0.79911;,
-0.71023; 0.00000; -0.70397;,
-0.71023; 0.00000; -0.70397;,
-0.71023; 0.00000; -0.70397;,
-0.34627; 0.48737; -0.80160;,
-0.34627; 0.48737; -0.80160;,
-0.34627; 0.48737; -0.80160;,
-0.43031; 0.34997; -0.83208;,
-0.43031; 0.34997; -0.83208;,
-0.43031; 0.34997; -0.83208;,
0.15601; 0.41026; -0.89853;,
0.15601; 0.41026; -0.89853;,
0.15601; 0.41026; -0.89853;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-0.53802; 0.00000; 0.84293;,
-0.53802; 0.00000; 0.84293;,
-0.53802; 0.00000; 0.84293;,
-0.53802; 0.00000; 0.84293;,
-0.85180; 0.00000; 0.52387;,
-0.85180; 0.00000; 0.52387;,
-0.85180; 0.00000; 0.52387;,
-0.85180; 0.00000; 0.52387;,
0.99760; 0.00000; -0.06928;,
0.99760; 0.00000; -0.06928;,
0.99760; 0.00000; -0.06928;,
0.99760; 0.00000; -0.06928;,
0.84669; 0.00000; 0.53209;,
0.84669; 0.00000; 0.53209;,
0.84669; 0.00000; 0.53209;,
0.82847; 0.13346; 0.54390;,
0.82847; 0.13346; 0.54390;,
0.82847; 0.13346; 0.54390;,
0.50029; 0.00000; -0.86586;,
0.50029; 0.00000; -0.86586;,
0.50029; 0.00000; -0.86586;,
0.84669; 0.00000; 0.53209;,
-0.49981; 0.00000; -0.86614;,
-0.49981; 0.00000; -0.86614;,
-0.49981; 0.00000; -0.86614;,
0.50029; 0.00000; -0.86586;,
-0.06250; 0.00000; 0.99804;,
-0.06250; 0.00000; 0.99804;,
-0.06250; 0.00000; 0.99804;,
-0.49981; 0.00000; -0.86614;,
0.05679; 0.00000; 0.99839;,
0.05679; 0.00000; 0.99839;,
0.05679; 0.00000; 0.99839;,
-0.06250; 0.00000; 0.99804;,
0.56178; 0.00000; 0.82729;,
0.56178; 0.00000; 0.82729;,
0.56178; 0.00000; 0.82729;,
0.05679; 0.00000; 0.99839;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
0.56178; 0.00000; 0.82729;,
0.96762; 0.00000; 0.25242;,
0.96762; 0.00000; 0.25242;,
0.96762; 0.00000; 0.25242;,
1.00000; 0.00000; 0.00000;,
0.48248; 0.01283; -0.87581;,
0.48248; 0.01283; -0.87581;,
0.48248; 0.01283; -0.87581;,
0.96762; 0.00000; 0.25242;,
-0.81068; 0.00000; -0.58549;,
-0.81068; 0.00000; -0.58549;,
-0.81068; 0.00000; -0.58549;,
0.49896; 0.00000; -0.86662;,
0.49896; 0.00000; -0.86662;,
0.49896; 0.00000; -0.86662;,
-0.81495; 0.09037; -0.57244;,
-0.81495; 0.09037; -0.57244;,
-0.81495; 0.09037; -0.57244;,
-0.81080; 0.00048; -0.58532;,
-0.81080; 0.00048; -0.58532;,
-0.81080; 0.00048; -0.58532;,
-0.04585; 0.00000; -0.99895;,
-0.04585; 0.00000; -0.99895;,
-0.04585; 0.00000; -0.99895;,
-0.04585; 0.00000; -0.99895;,
0.00378; 0.17187; -0.98511;,
0.00378; 0.17187; -0.98511;,
0.00378; 0.17187; -0.98511;,
0.26899; 0.00000; 0.96314;,
0.26899; 0.00000; 0.96314;,
0.26899; 0.00000; 0.96314;,
0.26899; 0.00000; 0.96314;,
0.34754; 0.23992; 0.90645;,
0.34754; 0.23992; 0.90645;,
0.34754; 0.23992; 0.90645;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
0.80356; 0.00000; 0.59523;,
0.80356; 0.00000; 0.59523;,
0.80356; 0.00000; 0.59523;,
0.80356; 0.00000; 0.59523;,
0.94537; 0.00000; -0.32599;,
0.94537; 0.00000; -0.32599;,
0.94537; 0.00000; -0.32599;,
0.94537; 0.00000; -0.32599;,
0.87986; 0.00000; -0.47523;,
0.87986; 0.00000; -0.47523;,
0.87986; 0.00000; -0.47523;,
0.87986; 0.00000; -0.47523;,
0.64256; 0.00000; -0.76624;,
0.64256; 0.00000; -0.76624;,
0.64256; 0.00000; -0.76624;,
0.64256; 0.00000; -0.76624;,
0.23004; 0.00000; -0.97318;,
0.23004; 0.00000; -0.97318;,
0.23004; 0.00000; -0.97318;,
0.23004; 0.00000; -0.97318;,
-0.74188; 0.01047; 0.67045;,
-0.74188; 0.01047; 0.67045;,
-0.74188; 0.01047; 0.67045;,
-0.74635; 0.00000; 0.66555;,
-0.74635; 0.00000; 0.66555;,
-0.74635; 0.00000; 0.66555;,
-0.69990; -0.01794; 0.71401;,
-0.69990; -0.01794; 0.71401;,
-0.69990; -0.01794; 0.71401;,
-0.70941; 0.00000; 0.70480;,
-0.70941; 0.00000; 0.70480;,
-0.70941; 0.00000; 0.70480;,
-0.78765; 0.00000; 0.61612;,
-0.78765; 0.00000; 0.61612;,
-0.78765; 0.00000; 0.61612;,
-0.78765; 0.00000; 0.61612;,
-0.76341; -0.55167; 0.33597;,
-0.76341; -0.55167; 0.33597;,
-0.76341; -0.55167; 0.33597;,
-0.45651; 0.00000; -0.88972;,
-0.45651; 0.00000; -0.88972;,
-0.45651; 0.00000; -0.88972;,
-0.45651; 0.00000; -0.88972;,
-0.95487; 0.00000; -0.29704;,
-0.95487; 0.00000; -0.29704;,
-0.95487; 0.00000; -0.29704;,
-0.95487; 0.00000; -0.29704;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.19612; 0.00000; -0.98058;,
0.19612; 0.00000; -0.98058;,
0.19612; 0.00000; -0.98058;,
0.19612; 0.00000; -0.98058;,
0.98377; 0.00000; -0.17941;,
0.98377; 0.00000; -0.17941;,
0.98377; 0.00000; -0.17941;,
0.98377; 0.00000; -0.17941;,
-0.99827; 0.00000; -0.05872;,
-0.99827; 0.00000; -0.05872;,
-0.99827; 0.00000; -0.05872;,
-0.99827; 0.00000; -0.05872;,
-0.06050; 0.00000; 0.99817;,
-0.06050; 0.00000; 0.99817;,
-0.06050; 0.00000; 0.99817;,
-0.06050; 0.00000; 0.99817;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
-0.75598; 0.00000; -0.65459;,
-0.75598; 0.00000; -0.65459;,
-0.75598; 0.00000; -0.65459;,
-0.75598; 0.00000; -0.65459;,
-0.50006; 0.00000; 0.86599;,
-0.50006; 0.00000; 0.86599;,
-0.50006; 0.00000; 0.86599;,
-0.50006; 0.00000; 0.86599;,
-0.69135; -0.07480; -0.71863;,
-0.69135; -0.07480; -0.71863;,
-0.69135; -0.07480; -0.71863;,
-0.44440; 0.18139; -0.87727;,
-0.44440; 0.18139; -0.87727;,
-0.44440; 0.18139; -0.87727;,
-0.99673; 0.00000; -0.08078;,
-0.99673; 0.00000; -0.08078;,
-0.99673; 0.00000; -0.08078;,
-0.99673; 0.00000; -0.08078;,
0.15050; -0.98858; 0.00720;,
0.15050; -0.98858; 0.00720;,
0.15050; -0.98858; 0.00720;,
-0.99673; 0.00000; -0.08078;,
0.39964; 0.00000; 0.91667;,
0.39964; 0.00000; 0.91667;,
0.39964; 0.00000; 0.91667;,
0.18266; -0.98059; -0.07133;,
0.18266; -0.98059; -0.07133;,
0.18266; -0.98059; -0.07133;,
-0.28256; 0.00000; -0.95925;,
-0.28256; 0.00000; -0.95925;,
-0.28256; 0.00000; -0.95925;,
0.39964; 0.00000; 0.91667;,
0.27787; 0.00000; -0.96062;,
0.27787; 0.00000; -0.96062;,
0.27787; 0.00000; -0.96062;,
-0.28256; 0.00000; -0.95925;,
-0.12699; -0.99189; -0.00608;,
-0.12699; -0.99189; -0.00608;,
-0.12699; -0.99189; -0.00608;,
0.27787; 0.00000; -0.96062;,
-0.62184; 0.00000; 0.78315;,
-0.62184; 0.00000; 0.78315;,
-0.62184; 0.00000; 0.78315;,
-0.05444; -0.99772; -0.03984;,
-0.05444; -0.99772; -0.03984;,
-0.05444; -0.99772; -0.03984;,
-0.80275; 0.10234; -0.58747;,
-0.80275; 0.10234; -0.58747;,
-0.80275; 0.10234; -0.58747;,
-0.62184; 0.00000; 0.78315;,
-0.49016; 0.00000; -0.87163;,
-0.49016; 0.00000; -0.87163;,
-0.49016; 0.00000; -0.87163;,
-0.49016; 0.00000; -0.87163;,
-0.77690; 0.00000; 0.62963;,
-0.77690; 0.00000; 0.62963;,
-0.77690; 0.00000; 0.62963;,
-0.77542; 0.31650; 0.54640;,
-0.77542; 0.31650; 0.54640;,
-0.77542; 0.31650; 0.54640;,
-0.77690; 0.00000; 0.62963;,
-0.87237; 0.00000; -0.48885;,
-0.87237; 0.00000; -0.48885;,
-0.87237; 0.00000; -0.48885;,
-0.87237; 0.00000; -0.48885;,
-0.84366; 0.00000; -0.53688;,
-0.84366; 0.00000; -0.53688;,
-0.84366; 0.00000; -0.53688;,
-0.84366; 0.00000; -0.53688;,
-0.98789; 0.00000; 0.15518;,
-0.98789; 0.00000; 0.15518;,
-0.98789; 0.00000; 0.15518;,
-0.98789; 0.00000; 0.15518;,
-0.95529; 0.00000; 0.29568;,
-0.95529; 0.00000; 0.29568;,
-0.95529; 0.00000; 0.29568;,
-0.92291; 0.18301; 0.33874;,
-0.92291; 0.18301; 0.33874;,
-0.92291; 0.18301; 0.33874;,
-0.99843; 0.00000; -0.05605;,
-0.99843; 0.00000; -0.05605;,
-0.99843; 0.00000; -0.05605;,
-0.99843; 0.00000; -0.05605;,
-0.44721; 0.00000; 0.89443;,
-0.44721; 0.00000; 0.89443;,
-0.44721; 0.00000; 0.89443;,
-0.44721; 0.00000; 0.89443;,
-0.86493; 0.00000; 0.50190;,
-0.86493; 0.00000; 0.50190;,
-0.86493; 0.00000; 0.50190;,
-0.38212; 0.43926; 0.81304;,
-0.38212; 0.43926; 0.81304;,
-0.38212; 0.43926; 0.81304;,
-0.80222; 0.42687; 0.41741;,
-0.80222; 0.42687; 0.41741;,
-0.80222; 0.42687; 0.41741;,
-0.86493; 0.00000; 0.50190;,
0.70960; 0.00000; 0.70460;,
0.70960; 0.00000; 0.70460;,
0.70960; 0.00000; 0.70460;,
0.70960; 0.00000; 0.70460;,
0.44721; 0.00000; -0.89443;,
0.44721; 0.00000; -0.89443;,
0.44721; 0.00000; -0.89443;,
0.44721; 0.00000; -0.89443;,
-0.77403; 0.00000; -0.63315;,
-0.77403; 0.00000; -0.63315;,
-0.77403; 0.00000; -0.63315;,
-0.77403; 0.00000; -0.63315;,
-0.83052; 0.40644; -0.38084;,
-0.83052; 0.40644; -0.38084;,
-0.83052; 0.40644; -0.38084;,
-0.90034; 0.00000; 0.43519;,
-0.90034; 0.00000; 0.43519;,
-0.90034; 0.00000; 0.43519;,
-0.89783; 0.41382; 0.15054;,
-0.89783; 0.41382; 0.15054;,
-0.89783; 0.41382; 0.15054;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.90034; 0.00000; 0.43519;,
0.63215; 0.00000; 0.77484;,
0.63215; 0.00000; 0.77484;,
0.63215; 0.00000; 0.77484;,
-0.70711; 0.00000; 0.70711;,
0.24215; 0.46119; 0.85362;,
0.24215; 0.46119; 0.85362;,
0.24215; 0.46119; 0.85362;,
0.63215; 0.00000; 0.77484;,
-0.16118; 0.00000; -0.98692;,
-0.16118; 0.00000; -0.98692;,
-0.16118; 0.00000; -0.98692;,
-0.16118; 0.00000; -0.98692;,
-0.30117; 0.00000; -0.95357;,
-0.30117; 0.00000; -0.95357;,
-0.30117; 0.00000; -0.95357;,
-0.30117; 0.00000; -0.95357;,
-0.89534; 0.00000; -0.44538;,
-0.89534; 0.00000; -0.44538;,
-0.89534; 0.00000; -0.44538;,
-0.89534; 0.00000; -0.44538;,
-0.86095; 0.00000; -0.50870;,
-0.86095; 0.00000; -0.50870;,
-0.86095; 0.00000; -0.50870;,
-0.86095; 0.00000; -0.50870;,
-0.66249; 0.00000; -0.74907;,
-0.66249; 0.00000; -0.74907;,
-0.66249; 0.00000; -0.74907;,
-0.66249; 0.00000; -0.74907;,
-0.51486; 0.00000; 0.85727;,
-0.51486; 0.00000; 0.85727;,
-0.51486; 0.00000; 0.85727;,
-0.51486; 0.00000; 0.85727;,
0.89259; 0.00000; 0.45088;,
0.89259; 0.00000; 0.45088;,
0.89259; 0.00000; 0.45088;,
0.89259; 0.00000; 0.45088;,
0.51486; 0.00000; -0.85727;,
0.51486; 0.00000; -0.85727;,
0.51486; 0.00000; -0.85727;,
0.51486; 0.00000; -0.85727;,
0.84701; 0.00000; 0.53158;,
0.84701; 0.00000; 0.53158;,
0.84701; 0.00000; 0.53158;,
0.58110; 0.57228; -0.57863;,
0.58110; 0.57228; -0.57863;,
0.58110; 0.57228; -0.57863;,
0.70671; 0.43458; 0.55830;,
0.70671; 0.43458; 0.55830;,
0.70671; 0.43458; 0.55830;,
0.84701; 0.00000; 0.53158;,
-0.50006; 0.00000; -0.86599;,
-0.50006; 0.00000; -0.86599;,
-0.50006; 0.00000; -0.86599;,
-0.50006; 0.00000; -0.86599;;

250;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 7, 5, 6;,
3; 9, 4, 8;,
3; 5, 8, 4;,
3; 11, 10, 6;,
3; 10, 7, 6;,
3; 14, 13, 12;,
3; 15, 13, 14;,
3; 18, 17, 16;,
3; 19, 17, 18;,
3; 22, 21, 20;,
3; 23, 21, 22;,
3; 26, 25, 24;,
3; 27, 25, 26;,
3; 30, 29, 28;,
3; 33, 32, 31;,
3; 36, 35, 34;,
3; 37, 35, 36;,
3; 40, 39, 38;,
3; 41, 39, 40;,
3; 44, 43, 42;,
3; 45, 43, 44;,
3; 48, 47, 46;,
3; 49, 47, 48;,
3; 52, 51, 50;,
3; 53, 51, 52;,
3; 56, 55, 54;,
3; 57, 55, 56;,
3; 60, 59, 58;,
3; 61, 59, 60;,
3; 64, 63, 62;,
3; 67, 66, 65;,
3; 70, 69, 68;,
3; 62, 63, 71;,
3; 68, 69, 72;,
3; 75, 74, 73;,
3; 76, 74, 75;,
3; 79, 78, 77;,
3; 80, 78, 79;,
3; 83, 82, 81;,
3; 84, 82, 83;,
3; 87, 86, 85;,
3; 90, 89, 88;,
3; 93, 92, 91;,
3; 94, 92, 93;,
3; 97, 96, 95;,
3; 98, 96, 97;,
3; 101, 100, 99;,
3; 102, 100, 101;,
3; 105, 104, 103;,
3; 106, 104, 105;,
3; 109, 108, 107;,
3; 110, 108, 109;,
3; 113, 112, 111;,
3; 114, 112, 113;,
3; 117, 116, 115;,
3; 118, 116, 117;,
3; 121, 120, 119;,
3; 122, 120, 121;,
3; 125, 124, 123;,
3; 126, 124, 125;,
3; 129, 128, 127;,
3; 130, 128, 129;,
3; 133, 132, 131;,
3; 134, 132, 133;,
3; 137, 136, 135;,
3; 138, 136, 137;,
3; 141, 140, 139;,
3; 142, 140, 141;,
3; 145, 144, 143;,
3; 146, 144, 145;,
3; 149, 148, 147;,
3; 150, 148, 149;,
3; 153, 152, 151;,
3; 154, 152, 153;,
3; 157, 156, 155;,
3; 158, 156, 157;,
3; 161, 160, 159;,
3; 162, 160, 161;,
3; 165, 164, 163;,
3; 168, 167, 166;,
3; 171, 170, 169;,
3; 174, 173, 172;,
3; 177, 176, 175;,
3; 180, 179, 178;,
3; 183, 182, 181;,
3; 186, 185, 184;,
3; 187, 185, 186;,
3; 190, 189, 188;,
3; 191, 189, 190;,
3; 194, 193, 192;,
3; 195, 193, 194;,
3; 198, 197, 196;,
3; 199, 197, 198;,
3; 202, 201, 200;,
3; 205, 204, 203;,
3; 208, 207, 206;,
3; 200, 201, 209;,
3; 212, 211, 210;,
3; 206, 207, 213;,
3; 216, 215, 214;,
3; 210, 211, 217;,
3; 220, 219, 218;,
3; 214, 215, 221;,
3; 224, 223, 222;,
3; 218, 219, 225;,
3; 228, 227, 226;,
3; 222, 223, 229;,
3; 232, 231, 230;,
3; 226, 227, 233;,
3; 236, 235, 234;,
3; 230, 231, 237;,
3; 240, 239, 238;,
3; 243, 242, 241;,
3; 246, 245, 244;,
3; 249, 248, 247;,
3; 252, 251, 250;,
3; 253, 251, 252;,
3; 256, 255, 254;,
3; 259, 258, 257;,
3; 260, 258, 259;,
3; 263, 262, 261;,
3; 266, 265, 264;,
3; 267, 265, 266;,
3; 270, 269, 268;,
3; 271, 269, 270;,
3; 274, 273, 272;,
3; 275, 273, 274;,
3; 278, 277, 276;,
3; 279, 277, 278;,
3; 282, 281, 280;,
3; 283, 281, 282;,
3; 286, 285, 284;,
3; 287, 285, 286;,
3; 290, 289, 288;,
3; 293, 292, 291;,
3; 296, 295, 294;,
3; 299, 298, 297;,
3; 302, 301, 300;,
3; 303, 301, 302;,
3; 306, 305, 304;,
3; 309, 308, 307;,
3; 310, 308, 309;,
3; 313, 312, 311;,
3; 313, 314, 312;,
3; 317, 316, 315;,
3; 318, 316, 317;,
3; 321, 320, 319;,
3; 322, 320, 321;,
3; 325, 324, 323;,
3; 326, 324, 325;,
3; 329, 328, 327;,
3; 330, 328, 329;,
3; 333, 332, 331;,
3; 334, 332, 333;,
3; 337, 336, 335;,
3; 339, 338, 337;,
3; 342, 341, 340;,
3; 341, 343, 340;,
3; 337, 338, 336;,
3; 343, 345, 344;,
3; 340, 343, 344;,
3; 339, 347, 346;,
3; 347, 344, 345;,
3; 344, 347, 339;,
3; 339, 346, 338;,
3; 350, 349, 348;,
3; 351, 349, 350;,
3; 354, 353, 352;,
3; 355, 353, 354;,
3; 358, 357, 356;,
3; 359, 357, 358;,
3; 362, 361, 360;,
3; 365, 364, 363;,
3; 368, 367, 366;,
3; 369, 368, 366;,
3; 372, 371, 370;,
3; 366, 367, 373;,
3; 376, 375, 374;,
3; 379, 378, 377;,
3; 382, 381, 380;,
3; 374, 375, 383;,
3; 386, 385, 384;,
3; 380, 381, 387;,
3; 390, 389, 388;,
3; 384, 385, 391;,
3; 394, 393, 392;,
3; 397, 396, 395;,
3; 400, 399, 398;,
3; 392, 393, 401;,
3; 404, 403, 402;,
3; 405, 403, 404;,
3; 408, 407, 406;,
3; 411, 410, 409;,
3; 406, 407, 412;,
3; 415, 414, 413;,
3; 416, 414, 415;,
3; 419, 418, 417;,
3; 420, 418, 419;,
3; 423, 422, 421;,
3; 424, 422, 423;,
3; 427, 426, 425;,
3; 430, 429, 428;,
3; 433, 432, 431;,
3; 434, 432, 433;,
3; 437, 436, 435;,
3; 438, 436, 437;,
3; 441, 440, 439;,
3; 444, 443, 442;,
3; 447, 446, 445;,
3; 439, 440, 448;,
3; 451, 450, 449;,
3; 452, 450, 451;,
3; 455, 454, 453;,
3; 456, 454, 455;,
3; 459, 458, 457;,
3; 460, 458, 459;,
3; 463, 462, 461;,
3; 466, 465, 464;,
3; 469, 468, 467;,
3; 472, 471, 470;,
3; 464, 465, 473;,
3; 476, 475, 474;,
3; 477, 471, 472;,
3; 480, 479, 478;,
3; 474, 475, 481;,
3; 484, 483, 482;,
3; 485, 483, 484;,
3; 488, 487, 486;,
3; 489, 487, 488;,
3; 492, 491, 490;,
3; 493, 491, 492;,
3; 496, 495, 494;,
3; 497, 495, 496;,
3; 500, 499, 498;,
3; 501, 499, 500;,
3; 504, 503, 502;,
3; 505, 503, 504;,
3; 508, 507, 506;,
3; 509, 507, 508;,
3; 512, 511, 510;,
3; 513, 511, 512;,
3; 516, 515, 514;,
3; 519, 518, 517;,
3; 522, 521, 520;,
3; 514, 515, 523;,
3; 526, 525, 524;,
3; 527, 525, 526;;
}
MeshTextureCoords {
528;
0.00000; 0.00000;,
4.00000; 0.00000;,
0.00000; 1.00000;,
4.00000; 1.00000;,
1.66602; 0.20020;,
3.00000; 1.00000;,
0.66602; 0.20020;,
-1.00000; 1.00000;,
3.00000; 0.00000;,
1.66602; 0.00000;,
-1.00000; 0.00000;,
0.66602; 0.00000;,
0.00000; 0.00000;,
4.00000; 0.00000;,
0.00000; 1.00000;,
4.00000; 1.00000;,
0.00000; 0.00000;,
4.10938; 0.00000;,
0.00000; 1.00000;,
4.10938; 1.00000;,
0.00000; 1.00000;,
0.00000; 0.00000;,
3.00000; 1.00000;,
3.00000; 0.00000;,
0.00000; 0.50000;,
1.11670; 0.50000;,
0.00000; 1.00000;,
1.11670; 1.00000;,
1.56445; 1.00000;,
3.12842; 0.00000;,
3.12842; 1.00000;,
0.00000; 1.00000;,
3.12842; 0.00000;,
1.56445; 1.00000;,
-3.00000; 0.50000;,
1.00000; 0.00000;,
-3.00000; 1.00000;,
1.00000; 1.00000;,
1.00000; 1.00000;,
1.00000; 0.00000;,
3.00000; 1.00000;,
3.00000; 0.50000;,
3.00000; 1.00000;,
0.00000; 1.00000;,
3.00000; 0.50000;,
0.00000; 0.00000;,
0.00000; 0.50000;,
1.00000; 0.50000;,
0.00000; 1.00000;,
1.00000; 1.00000;,
0.00000; 0.50000;,
3.00000; 0.50000;,
0.00000; 1.00000;,
3.00000; 1.00000;,
0.00000; 0.00000;,
4.00000; 0.50000;,
0.00000; 1.00000;,
4.00000; 1.00000;,
1.10986; 0.50000;,
1.10986; 1.00000;,
0.00000; 0.50000;,
0.00000; 1.00000;,
0.10644; 1.00000;,
1.00000; 0.00000;,
1.00000; 1.00000;,
-1.12500; 0.50000;,
1.00000; 0.00000;,
1.00000; 0.50000;,
-1.00000; 1.00000;,
3.00000; 0.00000;,
3.00000; 1.00000;,
0.10644; 0.00000;,
-1.00000; 0.00000;,
0.00000; 0.00000;,
4.00000; 0.50000;,
0.00000; 1.00000;,
4.00000; 1.00000;,
0.00000; 0.00000;,
4.00000; 0.00000;,
0.00000; 1.00000;,
4.00000; 1.00000;,
0.00000; 1.00000;,
0.00000; 0.50000;,
0.25000; 1.00000;,
0.25000; 0.62500;,
0.00000; 0.50000;,
2.87500; 0.50000;,
0.25000; 0.62500;,
0.25000; 0.62500;,
2.87500; 0.50000;,
2.75000; 0.62500;,
1.00000; 1.00000;,
0.25000; 1.00000;,
1.00000; 0.62500;,
0.25000; 0.62500;,
2.75000; 1.00000;,
2.00000; 1.00000;,
2.75000; 0.62500;,
2.00000; 0.62500;,
2.87500; 1.00000;,
2.75000; 1.00000;,
2.87500; 0.50000;,
2.75000; 0.62500;,
0.00000; 1.00000;,
0.00000; 0.50000;,
0.25000; 1.00000;,
0.25000; 0.62500;,
0.00000; 0.50000;,
3.00000; 0.50000;,
0.25000; 0.62500;,
2.75000; 0.62500;,
2.75000; 0.62500;,
3.00000; 0.50000;,
2.75000; 1.00000;,
3.00000; 1.00000;,
1.00000; 1.00000;,
0.25000; 1.00000;,
1.00000; 0.62500;,
0.25000; 0.62500;,
2.75000; 1.00000;,
2.00000; 1.00000;,
2.75000; 0.62500;,
2.00000; 0.62500;,
3.00000; 1.00000;,
0.00000; 1.00000;,
3.00000; 0.50000;,
0.00000; 0.50000;,
4.00000; 1.00000;,
0.00000; 1.00000;,
4.00000; 0.50000;,
0.00000; 0.50000;,
2.00000; 1.00000;,
0.87256; 1.00000;,
2.00000; 0.50000;,
0.87256; 0.50000;,
2.00000; 1.00000;,
1.75000; 1.00000;,
2.00000; 0.50000;,
1.75000; 0.62500;,
1.75000; 0.62500;,
1.75000; 1.00000;,
1.00000; 0.62500;,
1.00000; 1.00000;,
0.25000; 1.00000;,
0.00000; 1.00000;,
0.25000; 0.62500;,
0.00000; 0.50000;,
0.00000; 0.50000;,
2.00000; 0.50000;,
0.25000; 0.62500;,
1.75000; 0.62500;,
0.25000; 0.62500;,
1.00000; 0.62500;,
0.25000; 1.00000;,
1.00000; 1.00000;,
1.00000; 1.00000;,
0.00000; 1.00000;,
1.00000; 0.50000;,
0.00000; 0.50000;,
1.00000; 0.75000;,
-0.12500; 1.00000;,
1.00000; 0.50000;,
-0.12500; 0.50000;,
1.00000; 1.00000;,
0.00000; 1.00000;,
0.00000; 0.00000;,
-0.12500; 1.00000;,
1.00000; 0.75000;,
1.00000; 1.00000;,
4.00000; 1.00000;,
2.00000; 1.00000;,
4.00000; 0.00000;,
1.00000; 1.00000;,
0.00000; 0.00000;,
1.00000; 0.50000;,
2.00000; 1.00000;,
0.00000; 1.00000;,
0.00000; 0.00000;,
4.00000; 0.00000;,
2.00000; 1.00000;,
0.00000; 0.00000;,
1.00000; 0.00000;,
1.00000; 1.00000;,
0.00000; 1.00000;,
2.00000; 1.00000;,
0.00000; 1.00000;,
2.00000; 0.00000;,
0.00000; 0.50000;,
0.00000; 1.00000;,
0.00000; 0.00000;,
2.00000; 1.00000;,
2.00000; 0.50000;,
0.00000; 1.00000;,
0.00000; 0.00000;,
1.00000; 1.00000;,
1.00000; 0.00000;,
0.50000; 0.50000;,
1.00000; 0.50000;,
0.50000; 1.00000;,
1.00000; 1.00000;,
1.00000; 0.50000;,
0.00000; 0.75000;,
0.00000; 0.50000;,
1.00000; 1.00000;,
0.00000; 1.00000;,
0.00000; 0.75000;,
2.00000; 1.00000;,
0.00000; 0.50000;,
2.00000; 0.50000;,
1.00000; 1.00000;,
0.00000; 1.00000;,
3.00000; 0.50000;,
3.00000; 1.00000;,
0.00000; 1.00000;,
0.00000; 0.50000;,
1.00000; 1.00000;,
0.00000; 1.00000;,
0.00000; 0.50000;,
1.00000; 1.00000;,
0.00000; 0.50000;,
1.00000; 0.50000;,
1.00000; 0.50000;,
0.00000; 1.00000;,
2.00000; 0.50000;,
2.00000; 1.00000;,
0.00000; 1.00000;,
3.00000; 0.50000;,
0.00000; 1.00000;,
0.00000; 0.50000;,
0.00000; 0.50000;,
0.00000; 1.00000;,
1.00000; 0.50000;,
1.00000; 1.00000;,
3.00000; 1.00000;,
0.00000; 1.00000;,
0.50000; 0.50000;,
0.50000; 1.00000;,
0.00000; 0.50000;,
0.50000; 1.00000;,
1.00000; 0.50000;,
1.00000; 0.75000;,
0.00000; 0.50000;,
0.50000; 0.50000;,
0.00000; 1.00000;,
0.50000; 1.00000;,
1.00000; 0.75000;,
1.00000; 1.00000;,
0.50000; 0.50000;,
1.00000; 0.50000;,
0.50000; 1.00000;,
0.00000; 0.50000;,
1.00000; 0.50000;,
0.00000; 0.75000;,
1.00000; 1.00000;,
0.00000; 0.75000;,
1.00000; 1.00000;,
0.00000; 1.00000;,
0.00000; 0.50000;,
1.00000; 0.50000;,
0.00000; 1.00000;,
1.00000; 0.75000;,
0.00000; 1.00000;,
1.00000; 0.75000;,
1.00000; 1.00000;,
0.00000; 0.00000;,
4.00000; 0.00000;,
0.00000; 1.00000;,
4.00000; 1.00000;,
0.00000; 0.00000;,
1.00000; 0.00000;,
0.00000; 1.00000;,
1.00000; 1.00000;,
0.00000; 0.00000;,
2.00000; 0.00000;,
0.00000; 1.00000;,
2.00000; 1.00000;,
0.00000; 0.00000;,
1.00000; 0.00000;,
0.00000; 1.00000;,
1.00000; 1.00000;,
1.00000; 1.00000;,
0.00000; 1.00000;,
1.00000; 0.00000;,
0.00000; 0.00000;,
0.00000; 0.00000;,
1.00000; 0.00000;,
0.00000; 1.00000;,
1.00000; 1.00000;,
0.62647; 0.00000;,
2.00000; 0.00000;,
1.00000; 1.00000;,
1.00000; 1.00000;,
2.00000; 0.00000;,
2.00000; 0.50000;,
0.62647; 0.00000;,
1.00000; 1.00000;,
0.00000; 0.00000;,
0.00000; 0.00000;,
1.00000; 1.00000;,
0.00000; 1.00000;,
2.00000; 1.00000;,
1.00000; 1.00000;,
2.00000; 0.00000;,
1.00000; 0.00000;,
2.50000; 1.00000;,
1.00000; 1.00000;,
2.00000; 0.50000;,
1.00000; 1.00000;,
-2.00000; 1.00000;,
1.00000; 0.00000;,
-2.00000; 0.50000;,
0.00000; 1.00000;,
0.00000; 0.50000;,
3.00000; 1.00000;,
3.00000; 0.50000;,
1.00000; 1.00000;,
0.00000; 1.00000;,
1.00000; 0.50000;,
0.00000; 0.00000;,
0.00000; 1.00000;,
0.00000; 0.50000;,
1.00000; 1.00000;,
1.00000; 0.50000;,
0.00000; 1.00000;,
0.00000; 0.50000;,
1.00000; 1.00000;,
1.00000; 0.50000;,
1.00000; 1.00000;,
0.00000; 1.00000;,
1.00000; 0.50000;,
0.00000; 0.50000;,
0.00000; 1.00000;,
0.00000; 0.50000;,
1.00000; 1.00000;,
1.00000; 0.00000;,
0.25293; 0.00000;,
0.16455; 0.19287;,
0.00000; 0.00000;,
0.15283; 0.43359;,
0.00000; 1.00000;,
1.00000; 0.00000;,
0.83252; 0.16894;,
0.72900; 0.00000;,
0.84375; 0.42725;,
1.00000; 1.00000;,
0.72803; 0.60156;,
0.29492; 0.62354;,
0.50293; 0.69873;,
0.00000; 0.00000;,
4.00000; 0.00000;,
0.00000; 1.00000;,
4.00000; 1.00000;,
0.00000; 0.00000;,
4.00000; 0.00000;,
0.00000; 1.00000;,
4.00000; 1.00000;,
0.00000; 0.00000;,
5.00000; 0.00000;,
0.00000; 1.00000;,
5.00000; 1.00000;,
1.00000; 1.00000;,
-0.50000; 1.00000;,
0.00000; 0.50000;,
1.00000; 1.00000;,
0.00000; 0.50000;,
1.00000; 0.50000;,
0.00000; 1.00000;,
1.00000; 0.00000;,
1.00000; 0.50000;,
1.00000; 1.00000;,
0.25000; 0.25000;,
1.00000; 0.50000;,
0.75000; 0.25000;,
0.00000; 0.00000;,
0.25000; 0.25000;,
0.00000; 0.00000;,
0.00000; 0.50000;,
0.00000; 0.50000;,
1.00000; 0.50000;,
0.25000; 0.25000;,
0.75000; 0.00000;,
1.00000; 0.50000;,
1.00000; 0.00000;,
0.25000; 0.00000;,
1.00000; 0.00000;,
0.75000; 0.25000;,
0.75000; 0.00000;,
0.75000; 0.25000;,
0.75000; 0.25000;,
0.00000; 0.50000;,
0.25000; 0.25000;,
1.00000; 0.50000;,
0.00000; 0.50000;,
0.25000; 0.00000;,
0.25000; 0.25000;,
1.00000; 0.50000;,
0.00000; 0.50000;,
0.75000; 0.25000;,
0.00000; 0.50000;,
1.00000; 0.50000;,
0.50000; 1.00000;,
0.00000; 0.00000;,
0.00000; 0.50000;,
0.00000; 0.00000;,
1.00000; 0.50000;,
1.00000; 0.00000;,
1.00000; 0.00000;,
0.00000; 0.50000;,
0.00000; 0.00000;,
1.00000; 1.00000;,
0.00000; 1.00000;,
0.00000; 0.50000;,
1.00000; 1.00000;,
0.00000; 0.00000;,
1.00000; 0.50000;,
0.00000; 1.00000;,
1.00000; 1.00000;,
0.00000; 0.00000;,
1.00000; 0.00000;,
0.00000; 1.00000;,
1.00000; 1.00000;,
0.00000; 0.00000;,
1.00000; 0.00000;,
0.00000; 1.00000;,
1.00000; 1.00000;,
1.50000; 0.50000;,
3.00000; 0.50000;,
1.50000; 1.00000;,
1.50000; 1.00000;,
3.00000; 0.50000;,
3.00000; 1.00000;,
1.50000; 1.00000;,
0.00000; 1.00000;,
1.50000; 0.50000;,
0.00000; 0.50000;,
2.00000; 0.50000;,
0.00000; 1.00000;,
2.00000; 0.00000;,
0.00000; 0.00000;,
2.00000; 0.00000;,
0.28662; 0.75000;,
0.28662; 0.50000;,
2.00000; 1.00000;,
0.00000; 1.00000;,
2.00000; 0.50000;,
2.00000; 1.00000;,
0.28662; 1.00000;,
0.28662; 0.75000;,
2.00000; 1.00000;,
0.00000; 1.00000;,
0.00000; 0.50000;,
0.25000; 1.00000;,
0.25000; 0.50000;,
0.50000; 1.00000;,
0.50000; 0.25000;,
1.00000; 1.00000;,
1.00000; 0.00000;,
1.00000; 0.50000;,
0.00000; 1.00000;,
1.00000; 0.00000;,
0.00000; 0.00000;,
1.00000; 0.50000;,
1.00000; 1.00000;,
0.00000; 1.00000;,
1.00000; 0.00000;,
0.00000; 0.50000;,
0.00000; 0.00000;,
0.00000; 0.50000;,
1.00000; 1.00000;,
0.00000; 1.00000;,
1.24902; 1.00000;,
0.24902; 1.00000;,
1.24902; 0.50000;,
1.00000; 1.00000;,
1.00000; 0.50000;,
0.00000; 0.50000;,
0.00000; 0.00000;,
0.24902; 0.50000;,
1.00000; 1.00000;,
0.00000; 1.00000;,
0.00000; 0.50000;,
1.00000; 1.00000;,
0.00000; 0.00000;,
4.00000; 0.00000;,
0.00000; 1.00000;,
4.00000; 1.00000;,
0.00000; 0.00000;,
4.00000; 0.00000;,
0.00000; 1.00000;,
4.00000; 1.00000;,
0.00000; 0.00000;,
4.00000; 0.00000;,
0.00000; 1.00000;,
4.00000; 1.00000;,
0.00000; 0.50000;,
1.00000; 0.50000;,
0.00000; 1.00000;,
1.00000; 1.00000;,
0.00000; 0.50000;,
2.00000; 0.50000;,
0.00000; 1.00000;,
2.00000; 1.00000;,
1.00000; 1.00000;,
0.00000; 1.00000;,
1.00000; 0.50000;,
0.00000; 0.50000;,
0.00000; 0.00000;,
2.11377; 0.00000;,
0.00000; 1.00000;,
2.11377; 1.00000;,
1.00000; 1.00000;,
0.00000; 0.50000;,
1.00000; 0.00000;,
0.00000; 0.00000;,
0.00000; 1.00000;,
2.00000; 0.00000;,
2.00000; 0.50000;,
1.00000; 1.00000;,
0.00000; 1.00000;,
0.00000; 0.50000;,
0.00000; 1.00000;,
2.00000; 0.50000;,
2.00000; 1.00000;,
0.00000; 0.50000;,
5.00000; 1.00000;,
0.00000; 1.00000;,
5.00000; 0.00000;,
0.00000; 0.00000;;
}

}

}

Frame frmpart18_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part18 {
720;
-18.40500; -2.28000; -36.79500;,
-11.04500; -2.28000; -34.62500;,
-11.04500; -2.28000; -41.04500;,
-18.40500; -2.28000; -33.62500;,
-11.04500; -2.28000; -32.54501;,
-18.40500; -2.28000; -31.62500;,
-18.40500; -2.28000; -28.29500;,
-11.04500; -2.28000; -24.04500;,
-18.40500; -2.28000; -28.29500;,
-18.40500; -2.28000; -19.79500;,
-11.04500; -2.28000; -32.54501;,
-3.68000; -2.28000; -19.79500;,
-11.04500; -2.28000; -15.54500;,
-3.68000; -2.28000; -28.29500;,
-5.14000; -2.28000; -36.35500;,
0.23500; -2.28000; -33.24500;,
1.93000; -2.28000; -34.94000;,
-11.04500; -2.28000; -32.54501;,
-3.68000; -2.28000; -28.29500;,
1.36500; -0.78000; -33.24500;,
2.81500; -0.78000; -34.52000;,
1.08500; -0.78000; -33.52500;,
3.68000; -0.78000; -32.54501;,
0.80000; -0.78000; -32.68000;,
-1.96000; -2.28000; -38.83500;,
-2.87500; -2.28000; -38.62000;,
0.31500; -0.78000; -30.60500;,
-3.72500; -2.28000; -40.59500;,
-11.04500; -2.28000; -41.04500;,
-4.01000; -2.28000; -39.75000;,
-6.27000; -2.28000; -37.48500;,
-11.04500; -2.28000; -34.62500;,
3.34500; -0.78000; -34.66000;,
2.35500; -0.78000; -34.80000;,
-21.82500; -0.74500; -13.27000;,
-18.40500; -0.28000; -11.29500;,
-18.40500; -2.28000; -19.79500;,
-21.82500; -0.74500; -13.27000;,
-25.76500; -3.28000; -7.04500;,
-18.40500; -0.28000; -11.29500;,
-12.54000; -0.28000; -8.64000;,
-16.07000; -0.28000; -9.42000;,
-13.12500; -0.28000; -7.72000;,
-18.40500; -0.28000; -11.29500;,
-15.32500; -0.28000; -10.24500;,
-11.04500; -0.28000; -7.04500;,
-11.04500; -2.28000; -15.54500;,
-18.40500; -2.28000; -19.79500;,
-15.32500; -0.28000; -10.24500;,
-15.32500; -0.28000; -10.24500;,
-18.40500; -2.28000; -19.79500;,
-18.40500; -0.28000; -11.29500;,
-18.40500; -3.28000; -2.79500;,
-13.12500; -0.28000; -7.72000;,
-16.07000; -0.28000; -9.42000;,
-18.40500; -3.28000; -2.79500;,
-11.04500; -0.28000; -7.04500;,
-13.12500; -0.28000; -7.72000;,
-16.07000; -0.28000; -9.42000;,
-25.76500; -3.28000; -7.04500;,
-18.40500; -3.28000; -2.79500;,
-25.76500; -3.28000; -7.04500;,
-16.07000; -0.28000; -9.42000;,
-18.40500; -0.28000; -11.29500;,
-11.04500; -1.37500; -11.70000;,
-11.04500; -2.28000; -15.54500;,
-15.32500; -0.28000; -10.24500;,
-12.54000; -0.28000; -8.64000;,
-11.04500; -1.37500; -11.70000;,
-15.32500; -0.28000; -10.24500;,
-11.04500; -0.28000; -7.04500;,
-11.04500; -1.37500; -11.70000;,
-12.54000; -0.28000; -8.64000;,
2.08500; -0.78000; -24.64500;,
-3.68000; -2.28000; -19.79500;,
3.68000; -1.68000; -15.54500;,
-3.68000; -2.28000; -28.29500;,
-3.68000; -2.28000; -19.79500;,
2.08500; -0.78000; -24.64500;,
0.31500; -0.78000; -30.60500;,
3.76000; -0.78000; -26.58500;,
3.68000; -0.78000; -32.54501;,
11.04000; -0.78000; -28.29500;,
3.68000; -1.68000; -15.54500;,
11.04000; -0.78000; -19.79500;,
3.76000; -0.78000; -26.58500;,
11.04000; -0.78000; -19.79500;,
3.68000; -1.68000; -15.54500;,
3.76000; -0.78000; -26.58500;,
2.08500; -0.78000; -24.64500;,
11.04000; -0.78000; -28.29500;,
6.61000; -0.78000; -31.39500;,
3.68000; -0.78000; -32.54501;,
18.40000; -0.78000; -32.54501;,
15.00500; -0.78000; -31.39500;,
3.34500; -0.78000; -34.66000;,
17.93500; -0.78000; -34.32500;,
-11.04500; -0.55000; -4.22500;,
-14.04500; -0.55000; -4.22500;,
-11.04500; -0.55000; -4.02500;,
-11.04500; -0.55000; -4.02500;,
-14.04500; -0.55000; -4.02500;,
-13.94500; -1.73000; 2.65500;,
-18.40500; -3.28000; -2.79500;,
-18.40500; -3.28000; 1.49000;,
-18.40500; -3.28000; -2.79500;,
-11.04500; -1.28000; -0.62000;,
-11.04500; -0.28000; -7.04500;,
-6.15500; -0.21500; 3.79500;,
-3.68000; -0.28000; 5.70500;,
-3.68000; -0.28000; 3.95000;,
-13.94500; -1.73000; 2.65500;,
-18.40500; -2.28000; 5.70500;,
-11.04500; -1.28000; 9.95500;,
-6.15500; -0.21500; 3.79500;,
-11.04500; -1.28000; 9.95500;,
-3.68000; -0.28000; 5.70500;,
-11.04500; -1.28000; 9.95500;,
-6.15500; -0.21500; 3.79500;,
-9.73500; -1.28000; 1.51000;,
-9.73500; -1.28000; 1.51000;,
-11.04500; -1.28000; -0.62000;,
-13.94500; -1.73000; 2.65500;,
-11.04500; -1.28000; -0.62000;,
-18.40500; -3.28000; -2.79500;,
-13.94500; -1.73000; 2.65500;,
-18.40500; -3.28000; 5.70500;,
-13.94500; -1.73000; 2.65500;,
-11.04500; -1.28000; 9.95500;,
-9.73500; -1.28000; 1.51000;,
-11.04500; -3.28000; 26.95500;,
-18.40500; -3.28000; 22.70500;,
-14.72500; -4.28000; 29.08000;,
-18.40500; -3.28000; 22.70500;,
-11.04500; -3.28000; 26.95500;,
-11.04500; -2.28000; 18.45500;,
-11.04500; -4.28000; 31.20500;,
-14.72500; -4.28000; 29.08000;,
-18.40500; -3.28000; 22.70500;,
-18.40500; -4.28000; 31.20500;,
-7.36500; -3.28000; 29.08000;,
-11.04500; -4.28000; 31.20500;,
-3.68000; -4.28000; 31.20500;,
-7.36500; -3.28000; 29.08000;,
-7.36500; -3.28000; 29.08000;,
-3.68000; -3.28000; 31.20500;,
-3.68000; -3.28000; 22.70500;,
-3.68000; -4.28000; 31.20500;,
-11.04500; -4.28000; 31.20500;,
-11.04500; -4.28000; 35.45500;,
-3.68000; -3.28000; 22.70500;,
-11.04500; -2.28000; 18.45500;,
-11.04500; -3.28000; 26.95500;,
-11.04500; -3.28000; 26.95500;,
-14.72500; -4.28000; 29.08000;,
-13.52500; -4.28000; 33.67500;,
-15.25500; -4.28000; 32.67500;,
-16.70500; -4.28000; 32.18500;,
-18.40500; -4.28000; 31.20500;,
-3.68000; -2.28000; -19.79500;,
-11.04500; -2.28000; -15.54500;,
-3.68000; -0.28000; -11.29500;,
-3.68000; -0.28000; -11.29500;,
3.68000; -0.78000; -11.29500;,
3.68000; -1.68000; -15.54500;,
3.68000; -0.28000; -7.04500;,
3.68000; -0.78000; -11.29500;,
2.85500; -0.28000; -7.52000;,
-3.68000; -2.28000; -19.79500;,
-3.68000; -0.28000; -11.29500;,
3.68000; -1.68000; -15.54500;,
-3.68000; -0.28000; -11.29500;,
1.81500; -0.28000; -8.12000;,
3.68000; -0.78000; -11.29500;,
2.85500; -0.28000; -7.52000;,
3.68000; -0.78000; -11.29500;,
1.81500; -0.28000; -8.12000;,
1.13000; 0.38500; -7.03000;,
2.85500; -0.28000; -7.52000;,
1.81500; -0.28000; -8.12000;,
1.13000; 0.38500; -7.03000;,
1.93500; 0.43000; -6.24500;,
2.85500; -0.28000; -7.52000;,
-0.53500; 0.78500; -6.56500;,
-0.46000; 0.78500; -5.48500;,
-0.13500; 0.78500; -6.15000;,
0.04000; 0.78500; -5.48500;,
1.13000; 0.38500; -7.03000;,
-0.13500; 0.78500; -6.15000;,
1.93500; 0.43000; -6.24500;,
1.13000; 0.38500; -7.03000;,
-0.53500; 0.78500; -6.56500;,
-0.13500; 0.78500; -6.15000;,
-3.68000; -0.28000; -11.29500;,
-11.04500; -1.37500; -11.70000;,
-11.04500; -0.28000; -7.04500;,
-3.68000; -0.28000; -11.29500;,
-11.04500; -2.28000; -15.54500;,
-11.04500; -1.37500; -11.70000;,
3.08000; -0.28000; 1.05500;,
11.04000; -1.28000; 5.70500;,
11.04000; -0.28000; -2.79500;,
11.04000; -1.28000; 5.70500;,
3.08000; -0.28000; 1.05500;,
3.68000; -2.28000; 9.95500;,
3.68000; -2.28000; 9.95500;,
-0.95500; -0.28000; 3.79500;,
-3.68000; -0.28000; 5.70500;,
3.68000; -2.28000; 9.95500;,
3.08000; -0.28000; 1.05500;,
-0.95500; -0.28000; 3.79500;,
11.04000; -0.28000; -2.79500;,
3.68000; -0.28000; -7.04500;,
3.08000; -0.28000; -4.74500;,
-3.68000; -0.28000; 5.70500;,
-0.95500; -0.28000; 3.79500;,
-3.68000; -0.28000; 3.95000;,
3.08000; -0.28000; 1.05500;,
-3.68000; -2.28000; 14.20500;,
-11.04500; -1.28000; 9.95500;,
-11.04500; -2.28000; 18.45500;,
-11.04500; -1.28000; 9.95500;,
-3.68000; -2.28000; 14.20500;,
-3.68000; -0.28000; 5.70500;,
3.68000; -3.28000; 18.45500;,
-3.68000; -2.28000; 14.20500;,
-3.68000; -3.28000; 22.70500;,
-3.68000; -3.28000; 22.70500;,
3.68000; -2.28000; 9.95500;,
-3.68000; -0.28000; 5.70500;,
-3.68000; -2.28000; 14.20500;,
3.68000; -2.28000; 9.95500;,
18.40000; -0.78000; -24.04500;,
11.04000; -0.78000; -28.29500;,
11.04000; -0.78000; -19.79500;,
18.40000; -0.78000; -32.54501;,
25.76000; 0.22000; -19.79500;,
18.40000; -0.78000; -24.04500;,
18.40000; 1.22000; -15.54500;,
18.40000; -0.78000; -24.04500;,
11.04000; -0.78000; -19.79500;,
18.40000; 1.22000; -15.54500;,
18.40000; -0.78000; -24.04500;,
25.76000; -0.01500; -21.32000;,
25.76000; -1.08000; -28.29500;,
18.40000; -0.78000; -32.54501;,
18.40000; -0.78000; -24.04500;,
25.76000; -1.08000; -28.29500;,
18.40000; -0.78000; -24.04500;,
25.76000; 0.22000; -19.79500;,
25.76000; -0.01500; -21.32000;,
7.36000; -0.78000; -13.42000;,
11.04000; -0.78000; -19.79500;,
3.68000; -1.68000; -15.54500;,
7.36000; -0.78000; -13.42000;,
11.04000; 0.82000; -11.29500;,
11.04000; -0.78000; -19.79500;,
7.36000; -0.78000; -13.42000;,
3.68000; -0.78000; -11.29500;,
11.04000; 0.82000; -11.29500;,
7.36000; -0.78000; -13.42000;,
3.68000; -1.68000; -15.54500;,
3.68000; -0.78000; -11.29500;,
11.04000; 0.82000; -11.29500;,
3.68000; -0.28000; -7.04500;,
11.04000; -0.28000; -2.79500;,
11.04000; 0.82000; -11.29500;,
3.68000; -0.78000; -11.29500;,
3.68000; -0.28000; -7.04500;,
11.04000; 0.82000; -11.29500;,
18.40000; 1.22000; -7.04500;,
18.40000; 1.22000; -15.54500;,
18.40000; 1.22000; -7.04500;,
11.04000; 0.82000; -11.29500;,
11.04000; -0.28000; -2.79500;,
18.40000; 1.22000; -15.54500;,
11.04000; -0.78000; -19.79500;,
11.04000; 0.82000; -11.29500;,
3.68000; -3.28000; 26.95500;,
-3.68000; -3.28000; 22.70500;,
-3.68000; -3.28000; 31.20500;,
3.68000; -3.28000; 18.45500;,
11.04000; -3.28000; 31.20500;,
3.68000; -3.28000; 35.45500;,
11.04000; -3.28000; 22.70500;,
11.04000; -3.28000; 14.20500;,
3.68000; -2.28000; 9.95500;,
3.68000; -3.28000; 18.45500;,
3.68000; -2.28000; 9.95500;,
11.04000; -3.28000; 14.20500;,
11.04000; -1.28000; 5.70500;,
18.40000; -2.28000; 18.45500;,
11.04000; -3.28000; 14.20500;,
11.04000; -3.28000; 22.70500;,
11.04000; -3.28000; 14.20500;,
3.68000; -3.28000; 18.45500;,
11.04000; -3.28000; 22.70500;,
18.40000; -1.28000; 9.95500;,
11.04000; -1.28000; 5.70500;,
11.04000; -3.28000; 14.20500;,
11.04000; -3.28000; 14.20500;,
18.40000; -2.28000; 18.45500;,
18.40000; -1.28000; 9.95500;,
25.76000; 1.22000; -11.29500;,
18.40000; 1.22000; -15.54500;,
18.40000; 0.22000; -7.04500;,
18.40000; 1.22000; -15.54500;,
25.76000; 1.22000; -11.29500;,
25.76000; 0.22000; -19.79500;,
28.39500; 0.67000; -9.77500;,
29.93500; 0.54000; -13.70500;,
28.32500; 0.80500; -12.77500;,
25.76000; 1.22000; -11.29500;,
18.40000; 0.22000; -7.04500;,
25.76000; -1.48000; -2.79500;,
29.60500; 0.42000; -9.07500;,
28.41500; -0.42000; -6.34000;,
30.42000; -0.21500; -7.15500;,
29.60500; 0.42000; -9.07500;,
29.93500; 0.54000; -13.70500;,
28.39500; 0.67000; -9.77500;,
27.81500; -0.74500; -5.27500;,
30.42000; -0.21500; -7.15500;,
28.41500; -0.42000; -6.34000;,
28.39500; 0.67000; -9.77500;,
28.41500; -0.42000; -6.34000;,
29.60500; 0.42000; -9.07500;,
27.81500; -0.74500; -5.27500;,
33.12500; -0.31500; -7.04500;,
30.42000; -0.21500; -7.15500;,
33.12500; -0.31500; -7.04500;,
27.81500; -0.74500; -5.27500;,
25.76000; -1.48000; -2.79500;,
29.93500; 0.54000; -13.70500;,
33.12500; -0.31500; -7.04500;,
33.12500; 0.02000; -15.54500;,
30.42000; -0.21500; -7.15500;,
33.12500; -0.31500; -7.04500;,
30.22500; 0.14500; -9.02500;,
28.32500; 0.80500; -12.77500;,
25.76000; 0.22000; -19.79500;,
25.76000; 1.22000; -11.29500;,
30.22500; 0.14500; -9.02500;,
33.12500; -0.31500; -7.04500;,
29.93500; 0.54000; -13.70500;,
33.12500; 0.02000; -15.54500;,
25.76000; 0.22000; -19.79500;,
29.93500; 0.54000; -13.70500;,
29.93500; 0.54000; -13.70500;,
25.76000; 0.22000; -19.79500;,
28.32500; 0.80500; -12.77500;,
25.76000; 1.22000; -11.29500;,
25.76000; -1.48000; -2.79500;,
27.53000; 1.02500; -10.27500;,
28.32500; 0.80500; -12.77500;,
25.76000; 1.22000; -11.29500;,
27.53000; 1.02500; -10.27500;,
27.53000; 1.02500; -10.27500;,
25.76000; -1.48000; -2.79500;,
27.89000; -0.20500; -6.37000;,
-11.04500; -1.28000; 9.95500;,
-18.40500; -2.28000; 5.70500;,
-17.33500; -1.68000; 13.58500;,
-17.33500; -1.68000; 13.58500;,
-11.04500; -2.28000; 18.45500;,
-11.04500; -1.28000; 9.95500;,
-16.40500; -3.01000; 20.00500;,
-11.04500; -2.28000; 18.45500;,
-14.32000; -2.72500; 18.31500;,
-11.04500; -2.28000; 18.45500;,
-16.40500; -3.01000; 20.00500;,
-18.40500; -3.28000; 22.70500;,
-18.40500; -3.28000; 14.20500;,
-14.32000; -2.72500; 18.31500;,
-17.33500; -3.28000; 13.58500;,
-18.40500; -3.28000; 14.20500;,
-16.40500; -3.01000; 20.00500;,
-14.32000; -2.72500; 18.31500;,
-11.04500; -2.28000; 18.45500;,
-17.33500; -1.68000; 13.58500;,
-14.32000; -1.72500; 18.31500;,
-21.16500; -3.28000; 9.09500;,
-18.40500; -3.28000; 5.70500;,
-22.43500; -3.28000; 8.03000;,
-17.33500; -3.28000; 13.58500;,
-18.40500; -3.28000; 14.20500;,
-17.33500; -1.68000; 13.58500;,
-15.62500; -1.69000; 19.21500;,
-14.32000; -1.72500; 18.31500;,
-14.32000; -1.72500; 18.31500;,
-15.62500; -1.69000; 19.21500;,
-15.02500; -1.69000; 19.41500;,
35.31500; -0.88000; -16.81000;,
33.45500; -0.88000; -21.58500;,
33.12500; 0.02000; -15.54500;,
25.76000; -1.08000; -28.29500;,
25.76000; -0.01500; -21.32000;,
28.85000; -0.09000; -27.17500;,
34.49500; -1.08000; -25.23000;,
34.93000; -0.88000; -22.11500;,
39.78000; -0.88000; -19.38500;,
33.45500; -0.88000; -21.58500;,
35.31500; -0.88000; -16.81000;,
36.88500; -0.88000; -17.71500;,
28.85000; -0.09000; -27.17500;,
31.12000; -0.19000; -26.35000;,
29.21500; -0.09000; -27.57000;,
34.93000; -0.88000; -22.11500;,
38.54000; -0.88000; -18.67500;,
39.78000; -0.88000; -19.38500;,
29.21500; -0.09000; -27.57000;,
29.58000; 0.01000; -29.36000;,
28.85500; 0.01000; -29.02500;,
29.21500; -0.09000; -27.57000;,
31.12000; -0.19000; -26.35000;,
29.58000; 0.01000; -29.36000;,
27.10000; -0.88000; -29.07000;,
29.27500; -0.95000; -28.77000;,
29.20500; -0.90000; -29.01500;,
31.96500; -1.08000; -27.71000;,
29.27500; -0.95000; -28.77000;,
27.10000; -0.88000; -29.07000;,
29.20500; -0.90000; -29.01500;,
29.27500; -0.95000; -28.77000;,
29.50500; -0.92000; -28.84000;,
29.27500; -0.95000; -28.77000;,
31.96500; -1.08000; -27.71000;,
29.50500; -0.92000; -28.84000;,
31.96500; -1.08000; -27.71000;,
29.72000; -0.83000; -30.58000;,
29.50500; -0.86000; -29.19000;,
29.50500; -0.92000; -28.84000;,
31.96500; -1.08000; -27.71000;,
29.50500; -0.86000; -29.19000;,
29.72000; -0.83000; -30.58000;,
27.10000; -0.88000; -29.07000;,
29.20500; -0.90000; -29.01500;,
29.50500; -0.86000; -29.19000;,
29.72000; -0.83000; -30.58000;,
29.20500; -0.90000; -29.01500;,
25.76000; -0.01500; -21.32000;,
33.12500; 0.02000; -15.54500;,
33.45500; -0.88000; -21.58500;,
33.12500; 0.02000; -15.54500;,
25.76000; -0.01500; -21.32000;,
25.76000; 0.22000; -19.79500;,
25.76000; -0.01500; -21.32000;,
32.91500; -1.08000; -24.54500;,
31.12000; -0.19000; -26.35000;,
25.76000; -0.01500; -21.32000;,
31.12000; -0.19000; -26.35000;,
28.85000; -0.09000; -27.17500;,
32.91500; -1.08000; -24.54500;,
25.76000; -0.01500; -21.32000;,
33.45500; -0.88000; -21.58500;,
33.87000; -1.58000; 1.16000;,
25.76000; -1.48000; -2.79500;,
31.87000; -1.58000; 2.57000;,
25.76000; -1.48000; -2.79500;,
25.76000; -2.19000; 5.70500;,
31.87000; -1.58000; 2.57000;,
33.12500; -0.31500; -7.04500;,
33.87000; -1.58000; 1.16000;,
35.92000; -0.38000; -5.43000;,
33.12500; -0.31500; -7.04500;,
25.76000; -1.48000; -2.79500;,
33.87000; -1.58000; 1.16000;,
33.67000; -1.58000; 4.56000;,
31.87000; -1.58000; 2.57000;,
32.47000; -1.58000; 5.86000;,
40.48500; 0.02000; -2.79500;,
36.02000; 0.15500; -5.33000;,
33.97000; -0.58000; 1.16000;,
36.97000; -1.58000; 6.36000;,
36.97000; -1.58000; 4.76000;,
33.87000; -1.58000; 1.16000;,
34.97000; -1.58000; 6.36000;,
33.12500; -0.48000; 9.95500;,
34.97000; -0.58000; 6.36000;,
32.47000; -0.58000; 5.86000;,
33.12500; -0.48000; 9.95500;,
36.97000; -0.58000; 6.36000;,
34.97000; -0.58000; 6.36000;,
25.86000; -1.36000; 5.70500;,
33.12500; -0.48000; 9.95500;,
32.47000; -0.58000; 5.86000;,
36.97000; -0.58000; 4.76000;,
33.97000; -0.58000; 1.16000;,
33.67000; -0.58000; 4.56000;,
40.48500; 0.02000; -2.79500;,
33.97000; -0.58000; 1.16000;,
38.87000; -0.27500; 3.34000;,
25.86000; -1.36000; 5.70500;,
32.47000; -0.58000; 5.86000;,
31.77000; -0.58000; 2.67000;,
38.55500; -0.27500; 6.79000;,
36.97000; -0.58000; 4.76000;,
36.97000; -0.58000; 6.36000;,
38.87000; -0.27500; 3.34000;,
33.97000; -0.58000; 1.16000;,
36.97000; -0.58000; 4.76000;,
33.12500; -0.48000; 9.95500;,
38.55500; -0.27500; 6.79000;,
36.97000; -0.58000; 6.36000;,
38.87000; -0.27500; 3.34000;,
36.97000; -0.58000; 4.76000;,
38.55500; -0.27500; 6.79000;,
18.40000; -3.28000; 26.95500;,
11.04000; -3.28000; 22.70500;,
11.04000; -3.28000; 31.20500;,
11.04000; -3.28000; 22.70500;,
18.40000; -3.28000; 26.95500;,
18.40000; -2.28000; 18.45500;,
25.76000; -3.28000; 22.70500;,
18.40000; -3.28000; 31.20500;,
25.76000; -3.28000; 22.70500;,
18.40000; -2.28000; 18.45500;,
18.40000; -3.28000; 26.95500;,
33.12500; -0.31500; -7.04500;,
35.23500; -0.98000; -8.63000;,
34.77500; -0.78000; -9.93000;,
35.23500; -0.98000; -8.63000;,
33.12500; -0.31500; -7.04500;,
35.92000; -0.38000; -5.43000;,
38.80500; -0.98000; -10.28000;,
38.30000; -0.68000; -13.49500;,
37.76000; -0.98000; -11.92000;,
35.92000; -0.38000; -5.43000;,
37.40500; -0.98000; -8.08000;,
35.23500; -0.98000; -8.63000;,
38.30000; -0.68000; -13.49500;,
36.20500; -1.08000; -16.08000;,
36.31500; -0.98000; -13.12500;,
36.31500; -0.98000; -13.12500;,
37.76000; -0.98000; -11.92000;,
38.30000; -0.68000; -13.49500;,
41.22000; -0.88000; -17.32500;,
39.78000; -0.88000; -19.38500;,
38.54000; -0.88000; -18.67500;,
41.28500; -0.88000; -18.19000;,
43.12000; -0.88000; -18.99000;,
43.51500; -0.88000; -18.10000;,
35.31500; -0.88000; -16.81000;,
33.12500; 0.02000; -15.54500;,
34.69500; -0.78000; -12.32000;,
43.12000; -0.88000; -18.99000;,
43.51500; -0.88000; -18.10000;,
44.20000; -1.08000; -21.29000;,
34.69500; -0.78000; -12.32000;,
33.12500; 0.02000; -15.54500;,
34.77500; -0.78000; -9.93000;,
34.77500; -0.78000; -9.93000;,
33.12500; 0.02000; -15.54500;,
33.12500; -0.31500; -7.04500;,
-18.40500; -3.28000; 1.49000;,
-18.40500; -3.28000; -2.79500;,
-20.24000; -3.28000; 1.52000;,
-25.76500; -3.28000; 1.45500;,
-19.60500; -3.28000; 4.59000;,
-18.40500; -3.28000; 5.70500;,
-22.43500; -3.28000; 8.03000;,
-21.23500; -3.28000; 5.91000;,
-26.75000; -3.28000; 7.01000;,
-26.75000; -3.28000; 6.01000;,
-25.76500; -3.28000; -6.04500;,
-25.76500; -3.28000; -7.04500;,
17.93500; -0.78000; -34.32500;,
18.40000; -0.78000; -32.54501;,
20.62000; -0.88000; -31.92000;,
17.73500; -0.68000; -36.79000;,
21.69500; -0.68000; -39.62000;,
21.13000; -0.68000; -40.18500;,
20.06000; -0.68000; -36.08000;,
23.75500; -0.68000; -36.07000;,
21.47000; -0.88000; -32.77000;,
20.06000; -0.68000; -36.08000;,
19.06500; -0.78000; -35.46000;,
18.40000; -0.78000; -32.54501;,
25.76000; -1.08000; -28.29500;,
20.62000; -0.88000; -31.92000;,
21.47000; -0.88000; -32.77000;,
23.75500; -0.68000; -36.07000;,
20.06000; -0.68000; -36.08000;,
17.93500; -0.78000; -34.32500;,
20.62000; -0.88000; -31.92000;,
18.07500; -0.88000; -34.47000;,
21.47000; -0.88000; -32.77000;,
19.06500; -0.78000; -35.46000;,
18.92500; -0.88000; -35.31500;,
27.35500; -0.88000; -34.27000;,
27.10000; -0.88000; -29.07000;,
28.48500; -0.88000; -33.13500;,
21.47000; -0.88000; -32.77000;,
27.35500; -0.88000; -34.27000;,
23.75500; -0.68000; -36.07000;,
28.48500; -0.88000; -33.13500;,
27.10000; -0.88000; -29.07000;,
29.72000; -0.83000; -30.58000;,
29.69000; 0.62000; -36.17500;,
30.39500; 0.62000; -35.47000;,
30.39500; 0.62000; -36.88500;,
21.47000; -0.88000; -32.77000;,
17.73500; -0.68000; -36.79000;,
19.06500; -0.78000; -35.46000;,
20.06000; -0.68000; -36.08000;,
31.10500; 0.62000; -36.17500;,
-14.25500; -3.28000; 30.94500;,
-14.10500; -3.28000; 30.68500;,
-14.51500; -3.28000; 30.79500;,
-14.51500; -3.28000; 30.79500;,
-14.36500; -3.28000; 30.53500;,
-16.75500; -3.30500; 35.27500;,
-15.25500; -3.30500; 32.67500;,
-17.01500; -3.30500; 35.12500;,
-17.01500; -3.30500; 35.12500;,
-15.66500; -3.30500; 32.78500;,
-12.26500; -3.28000; 32.09500;,
-12.11500; -3.28000; 31.83500;,
-12.52500; -3.28000; 31.94500;,
-12.52500; -3.28000; 31.94500;,
-12.37500; -3.28000; 31.68500;,
-15.66500; -3.30500; 32.78500;,
-16.70500; -3.30500; 32.18500;,
-16.70500; -3.30500; 32.18500;,
-16.55500; -3.30500; 31.92500;,
-17.61000; -4.92000; 40.64999;,
-18.49500; -5.36500; 42.48000;,
-15.89500; -4.92000; 41.68000;,
-18.49500; -5.36500; 42.48000;,
-20.61000; -6.25500; 45.85000;,
-15.89500; -4.92000; 41.68000;,
-16.75500; -4.28000; 35.27500;,
-20.21000; -5.36500; 41.45000;,
-17.61000; -4.92000; 40.64999;,
-20.21000; -5.36500; 41.45000;,
-15.25500; -4.28000; 32.67500;,
-15.02500; -4.28000; 36.27500;,
-13.52500; -4.28000; 33.67500;,
-16.75500; -4.28000; 35.27500;,
-17.61000; -4.92000; 40.64999;,
-15.02500; -4.28000; 36.27500;,
-20.21000; -5.36500; 41.45000;,
-16.75500; -4.28000; 35.27500;,
-17.01500; -4.28000; 35.12500;,
-16.75500; -4.28000; 35.27500;,
17.12000; -1.77500; 2.19500;,
18.40000; -1.88000; 1.45500;,
17.38500; -1.66000; 0.87000;,
25.76000; -1.48000; -2.79500;,
18.40000; 0.22000; -7.04500;,
18.40000; -1.88000; 1.45500;,
17.12000; -1.77500; 2.19500;,
18.40000; -1.69000; 4.18000;,
18.40000; -1.88000; 1.45500;,
18.40000; -1.69000; 4.18000;,
17.12000; -1.77500; 2.19500;,
14.84000; -1.59000; 3.51000;,
15.41500; -1.37500; 6.90000;,
14.84000; -1.59000; 3.51000;,
11.04000; -1.28000; 5.70500;,
15.41500; -1.37500; 6.90000;,
18.40000; -1.69000; 4.18000;,
14.84000; -1.59000; 3.51000;,
18.40000; -1.28000; 9.95500;,
18.62000; -1.48000; 5.14000;,
15.41500; -1.37500; 6.90000;,
11.04000; -1.28000; 5.70500;,
18.40000; -1.28000; 9.95500;,
15.41500; -1.37500; 6.90000;,
18.62000; -1.48000; 5.14000;,
18.40000; -1.28000; 9.95500;,
22.31000; -1.63000; 5.64000;,
22.39000; -1.77000; 4.54500;,
18.62000; -1.48000; 5.14000;,
22.31000; -1.63000; 5.64000;,
22.31000; -1.63000; 5.64000;,
23.77000; -2.10500; 4.55500;,
22.39000; -1.77000; 4.54500;,
25.76000; -2.19000; 5.70500;,
22.31000; -1.63000; 5.64000;,
18.40000; -1.28000; 9.95500;,
22.39000; -2.04500; 3.76000;,
18.40000; -1.88000; 1.45500;,
18.40000; -1.69000; 4.18000;,
25.76000; -2.19000; 5.70500;,
23.77000; -2.10500; 4.55500;,
22.31000; -1.63000; 5.64000;,
18.40000; 0.22000; -7.04500;,
16.25000; -0.82500; -2.16500;,
18.40000; -1.88000; 1.45500;,
16.25000; -0.82500; -2.16500;,
17.38500; -1.66000; 0.87000;,
18.40000; -1.88000; 1.45500;,
11.04000; -0.28000; -2.79500;,
11.04000; -1.28000; 5.70500;,
14.84000; -1.59000; 3.51000;,
16.25000; -0.82500; -2.16500;,
18.40000; 0.22000; -7.04500;,
11.04000; -0.28000; -2.79500;,
11.04000; -0.28000; -2.79500;,
16.41000; -1.46500; 2.15000;,
16.88000; -1.35000; 0.58000;,
11.04000; -0.28000; -2.79500;,
14.84000; -1.59000; 3.51000;,
16.41000; -1.46500; 2.15000;,
25.76000; -2.19000; 5.70500;,
25.76000; -1.48000; -2.79500;,
23.77000; -2.10500; 4.55500;,
11.04000; -0.28000; -2.79500;,
16.88000; -1.35000; 0.58000;,
16.25000; -0.82500; -2.16500;,
22.39000; -2.04500; 3.76000;,
25.76000; -1.48000; -2.79500;,
18.40000; -1.88000; 1.45500;,
23.77000; -2.10500; 4.55500;,
25.76000; -1.48000; -2.79500;,
22.39000; -2.04500; 3.76000;,
33.12500; -0.48000; 9.95500;,
25.86000; -1.36000; 5.70500;,
25.76000; -2.16000; 14.10500;;

290;
3; 2, 1, 0;,
3; 3, 0, 1;,
3; 6, 5, 4;,
3; 9, 8, 7;,
3; 10, 7, 8;,
3; 12, 7, 11;,
3; 12, 9, 7;,
3; 7, 10, 13;,
3; 13, 11, 7;,
3; 16, 15, 14;,
3; 18, 17, 14;,
3; 21, 20, 19;,
3; 15, 18, 14;,
3; 23, 19, 22;,
3; 19, 20, 22;,
3; 25, 24, 16;,
3; 26, 23, 22;,
3; 29, 28, 27;,
3; 14, 25, 16;,
3; 31, 28, 30;,
3; 30, 28, 29;,
3; 32, 22, 20;,
3; 33, 20, 21;,
3; 36, 35, 34;,
3; 39, 38, 37;,
3; 42, 41, 40;,
3; 44, 41, 43;,
3; 40, 45, 42;,
3; 40, 41, 44;,
3; 48, 47, 46;,
3; 51, 50, 49;,
3; 54, 53, 52;,
3; 57, 56, 55;,
3; 60, 59, 58;,
3; 63, 62, 61;,
3; 66, 65, 64;,
3; 69, 68, 67;,
3; 72, 71, 70;,
3; 75, 74, 73;,
3; 78, 77, 76;,
3; 81, 80, 79;,
3; 80, 81, 82;,
3; 85, 84, 83;,
3; 86, 80, 82;,
3; 89, 88, 87;,
3; 92, 91, 90;,
3; 94, 93, 90;,
3; 92, 95, 91;,
3; 93, 94, 96;,
3; 90, 91, 94;,
3; 99, 98, 97;,
3; 101, 98, 100;,
3; 104, 103, 102;,
3; 107, 106, 105;,
3; 110, 109, 108;,
3; 113, 112, 111;,
3; 116, 115, 114;,
3; 119, 118, 117;,
3; 122, 121, 120;,
3; 125, 124, 123;,
3; 104, 102, 126;,
3; 129, 128, 127;,
3; 132, 131, 130;,
3; 135, 134, 133;,
3; 130, 136, 132;,
3; 139, 138, 137;,
3; 142, 141, 140;,
3; 136, 130, 143;,
3; 146, 145, 144;,
3; 149, 148, 147;,
3; 152, 151, 150;,
3; 153, 146, 144;,
3; 148, 155, 154;,
3; 149, 155, 148;,
3; 157, 154, 156;,
3; 154, 155, 156;,
3; 158, 154, 157;,
3; 161, 160, 159;,
3; 164, 163, 162;,
3; 167, 166, 165;,
3; 170, 169, 168;,
3; 173, 172, 171;,
3; 176, 175, 174;,
3; 179, 178, 177;,
3; 182, 181, 180;,
3; 185, 184, 183;,
3; 186, 184, 185;,
3; 189, 188, 187;,
3; 192, 191, 190;,
3; 195, 194, 193;,
3; 198, 197, 196;,
3; 201, 200, 199;,
3; 204, 203, 202;,
3; 207, 206, 205;,
3; 210, 209, 208;,
3; 213, 212, 211;,
3; 216, 215, 214;,
3; 217, 213, 211;,
3; 220, 219, 218;,
3; 223, 222, 221;,
3; 226, 225, 224;,
3; 227, 220, 218;,
3; 230, 229, 228;,
3; 231, 224, 225;,
3; 234, 233, 232;,
3; 235, 232, 233;,
3; 238, 237, 236;,
3; 241, 240, 239;,
3; 244, 243, 242;,
3; 247, 246, 245;,
3; 250, 249, 248;,
3; 253, 252, 251;,
3; 256, 255, 254;,
3; 259, 258, 257;,
3; 262, 261, 260;,
3; 265, 264, 263;,
3; 268, 267, 266;,
3; 271, 270, 269;,
3; 274, 273, 272;,
3; 277, 276, 275;,
3; 280, 279, 278;,
3; 281, 278, 279;,
3; 283, 278, 282;,
3; 283, 280, 278;,
3; 278, 281, 284;,
3; 284, 282, 278;,
3; 287, 286, 285;,
3; 290, 289, 288;,
3; 293, 292, 291;,
3; 296, 295, 294;,
3; 299, 298, 297;,
3; 302, 301, 300;,
3; 305, 304, 303;,
3; 308, 307, 306;,
3; 311, 310, 309;,
3; 314, 313, 312;,
3; 317, 316, 315;,
3; 320, 319, 318;,
3; 323, 322, 321;,
3; 326, 325, 324;,
3; 329, 328, 327;,
3; 332, 331, 330;,
3; 335, 334, 333;,
3; 338, 337, 336;,
3; 341, 340, 339;,
3; 344, 343, 342;,
3; 347, 346, 345;,
3; 350, 349, 348;,
3; 353, 352, 351;,
3; 356, 355, 354;,
3; 359, 358, 357;,
3; 362, 361, 360;,
3; 365, 364, 363;,
3; 368, 367, 366;,
3; 371, 370, 369;,
3; 374, 373, 372;,
3; 377, 376, 375;,
3; 380, 379, 378;,
3; 383, 382, 381;,
3; 385, 381, 384;,
3; 381, 382, 384;,
3; 388, 387, 386;,
3; 391, 390, 389;,
3; 394, 393, 392;,
3; 397, 396, 395;,
3; 400, 399, 398;,
3; 403, 402, 401;,
3; 406, 405, 404;,
3; 409, 408, 407;,
3; 412, 411, 410;,
3; 415, 414, 413;,
3; 418, 417, 416;,
3; 421, 420, 419;,
3; 424, 423, 422;,
3; 427, 426, 425;,
3; 430, 429, 428;,
3; 433, 432, 431;,
3; 436, 435, 434;,
3; 439, 438, 437;,
3; 442, 441, 440;,
3; 445, 444, 443;,
3; 448, 447, 446;,
3; 451, 450, 449;,
3; 454, 453, 452;,
3; 457, 456, 455;,
3; 460, 459, 458;,
3; 463, 462, 461;,
3; 466, 465, 464;,
3; 469, 468, 467;,
3; 472, 471, 470;,
3; 474, 473, 467;,
3; 468, 475, 467;,
3; 469, 467, 476;,
3; 467, 473, 476;,
3; 479, 478, 477;,
3; 482, 481, 480;,
3; 485, 484, 483;,
3; 488, 487, 486;,
3; 491, 490, 489;,
3; 494, 493, 492;,
3; 497, 496, 495;,
3; 500, 499, 498;,
3; 503, 502, 501;,
3; 506, 505, 504;,
3; 509, 508, 507;,
3; 512, 511, 510;,
3; 514, 507, 513;,
3; 514, 509, 507;,
3; 517, 516, 515;,
3; 520, 519, 518;,
3; 523, 522, 521;,
3; 526, 525, 524;,
3; 529, 528, 527;,
3; 532, 531, 530;,
3; 535, 534, 533;,
3; 538, 537, 536;,
3; 536, 537, 539;,
3; 541, 536, 540;,
3; 536, 539, 540;,
3; 544, 543, 542;,
3; 547, 546, 545;,
3; 550, 549, 548;,
3; 553, 552, 551;,
3; 556, 555, 554;,
3; 555, 556, 557;,
3; 556, 559, 558;,
3; 554, 559, 556;,
3; 561, 559, 560;,
3; 558, 559, 561;,
3; 562, 561, 560;,
3; 563, 561, 562;,
3; 557, 564, 555;,
3; 564, 565, 555;,
3; 568, 567, 566;,
3; 571, 570, 569;,
3; 570, 573, 572;,
3; 576, 575, 574;,
3; 579, 578, 577;,
3; 582, 581, 580;,
3; 585, 584, 583;,
3; 588, 587, 586;,
3; 591, 590, 589;,
3; 570, 572, 569;,
3; 594, 593, 592;,
3; 597, 596, 595;,
3; 600, 599, 598;,
3; 601, 589, 590;,
3; 604, 603, 602;,
3; 605, 599, 600;,
3; 608, 607, 606;,
3; 610, 607, 609;,
3; 613, 612, 611;,
3; 615, 612, 614;,
3; 618, 617, 616;,
3; 620, 617, 619;,
3; 622, 612, 621;,
3; 624, 612, 623;,
3; 627, 626, 625;,
3; 630, 629, 628;,
3; 633, 632, 631;,
3; 625, 626, 634;,
3; 637, 636, 635;,
3; 640, 639, 638;,
3; 643, 642, 641;,
3; 635, 636, 644;,
3; 647, 646, 645;,
3; 650, 649, 648;,
3; 653, 652, 651;,
3; 656, 655, 654;,
3; 659, 658, 657;,
3; 662, 661, 660;,
3; 665, 664, 663;,
3; 668, 667, 666;,
3; 671, 670, 669;,
3; 674, 673, 672;,
3; 677, 676, 675;,
3; 680, 679, 678;,
3; 683, 682, 681;,
3; 686, 685, 684;,
3; 689, 688, 687;,
3; 692, 691, 690;,
3; 695, 694, 693;,
3; 698, 697, 696;,
3; 701, 700, 699;,
3; 704, 703, 702;,
3; 707, 706, 705;,
3; 710, 709, 708;,
3; 713, 712, 711;,
3; 716, 715, 714;,
3; 719, 718, 717;;

MeshMaterialList {
1;
290;
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0;
Material mat18 {
  0.687500; 0.687500; 0.687500; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "3C7A0C22_c.bmp";
  }
  DiffuseTextureFileName  {
     "3C7A0C22_c.bmp";
  }
  FS10Material {
    0.687500; 0.687500; 0.687500; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "3C7A0C22_c.bmp";
    }
  }
}
}

MeshNormals {
720;
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
-0.00008; 0.97342; -0.22904;,
-0.00008; 0.97342; -0.22904;,
-0.00008; 0.97342; -0.22904;,
-0.25577; 0.94106; 0.22134;,
-0.25577; 0.94106; 0.22134;,
-0.25577; 0.94106; 0.22134;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.14245; 0.95857; -0.24669;,
0.14245; 0.95857; -0.24669;,
0.14245; 0.95857; -0.24669;,
0.07784; 0.97046; -0.22834;,
0.07784; 0.97046; -0.22834;,
0.07784; 0.97046; -0.22834;,
-0.19922; 0.91718; 0.34511;,
-0.19922; 0.91718; 0.34511;,
-0.19922; 0.91718; 0.34511;,
-0.13246; 0.90324; 0.40818;,
-0.13246; 0.90324; 0.40818;,
-0.13246; 0.90324; 0.40818;,
-0.19927; 0.91717; 0.34509;,
-0.19927; 0.91717; 0.34509;,
-0.19927; 0.91717; 0.34509;,
-0.22174; 0.93519; 0.27614;,
-0.22174; 0.93519; 0.27614;,
-0.22174; 0.93519; 0.27614;,
0.16870; 0.95945; -0.22583;,
0.16870; 0.95945; -0.22583;,
0.16870; 0.95945; -0.22583;,
0.15316; 0.95179; -0.26576;,
0.15316; 0.95179; -0.26576;,
0.15316; 0.95179; -0.26576;,
0.23732; 0.94562; -0.22244;,
0.23732; 0.94562; -0.22244;,
0.23732; 0.94562; -0.22244;,
-0.15127; 0.98075; 0.12351;,
-0.15127; 0.98075; 0.12351;,
-0.15127; 0.98075; 0.12351;,
-0.25181; 0.96778; 0.00000;,
-0.25181; 0.96778; 0.00000;,
-0.25181; 0.96778; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
-0.07507; 0.99393; 0.08048;,
-0.07507; 0.99393; 0.08048;,
-0.07507; 0.99393; 0.08048;,
0.00000; 1.00000; 0.00000;,
0.09447; 0.99218; 0.08157;,
0.09447; 0.99218; 0.08157;,
0.09447; 0.99218; 0.08157;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
-0.32827; 0.94458; 0.00000;,
-0.32827; 0.94458; 0.00000;,
-0.32827; 0.94458; 0.00000;,
-0.29954; 0.94273; 0.14673;,
-0.29954; 0.94273; 0.14673;,
-0.29954; 0.94273; 0.14673;,
0.02625; 0.99966; 0.00000;,
0.02625; 0.99966; 0.00000;,
0.02625; 0.99966; 0.00000;,
-0.12903; 0.99159; -0.00987;,
-0.12903; 0.99159; -0.00987;,
-0.12903; 0.99159; -0.00987;,
-0.06583; 0.99071; 0.11902;,
-0.06583; 0.99071; 0.11902;,
-0.06583; 0.99071; 0.11902;,
-0.26107; 0.96447; -0.04050;,
-0.26107; 0.96447; -0.04050;,
-0.26107; 0.96447; -0.04050;,
-0.09105; 0.99427; 0.05600;,
-0.09105; 0.99427; 0.05600;,
-0.09105; 0.99427; 0.05600;,
-0.23955; 0.96765; -0.07916;,
-0.23955; 0.96765; -0.07916;,
-0.23955; 0.96765; -0.07916;,
-0.32827; 0.94458; 0.00000;,
-0.11089; 0.99368; -0.01720;,
-0.11089; 0.99368; -0.01720;,
-0.11089; 0.99368; -0.01720;,
-0.13112; 0.96501; 0.22706;,
-0.13112; 0.96501; 0.22706;,
-0.13112; 0.96501; 0.22706;,
-0.06732; 0.99090; 0.11658;,
-0.06732; 0.99090; 0.11658;,
-0.06732; 0.99090; 0.11658;,
-0.13112; 0.96501; 0.22706;,
0.06732; 0.99090; 0.11658;,
0.06732; 0.99090; 0.11658;,
0.06732; 0.99090; 0.11658;,
0.00000; 0.90482; 0.42580;,
0.00000; 0.90482; 0.42580;,
0.00000; 0.90482; 0.42580;,
-0.13112; 0.96501; 0.22706;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.06727; 0.99090; 0.11658;,
0.06727; 0.99090; 0.11658;,
0.06727; 0.99090; 0.11658;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
-0.13103; 0.96503; -0.22706;,
-0.13103; 0.96503; -0.22706;,
-0.13103; 0.96503; -0.22706;,
0.06631; 0.97615; -0.20671;,
0.06631; 0.97615; -0.20671;,
0.06631; 0.97615; -0.20671;,
0.06712; 0.99091; -0.11658;,
0.06712; 0.99091; -0.11658;,
0.06712; 0.99091; -0.11658;,
0.05283; 0.97206; -0.22872;,
0.05283; 0.97206; -0.22872;,
0.05283; 0.97206; -0.22872;,
0.06732; 0.99091; -0.11651;,
0.06732; 0.99091; -0.11651;,
0.06732; 0.99091; -0.11651;,
0.06724; 0.99091; -0.11655;,
0.06724; 0.99091; -0.11655;,
0.06724; 0.99091; -0.11655;,
0.22947; 0.88833; -0.39775;,
0.22947; 0.88833; -0.39775;,
0.22947; 0.88833; -0.39775;,
0.26052; 0.91111; -0.31938;,
0.26052; 0.91111; -0.31938;,
0.26052; 0.91111; -0.31938;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.15550; 0.96421; -0.21474;,
0.15550; 0.96421; -0.21474;,
0.15550; 0.96421; -0.21474;,
0.18307; 0.96714; -0.17645;,
0.18307; 0.96714; -0.17645;,
0.18307; 0.96714; -0.17645;,
-0.13100; 0.96504; -0.22701;,
-0.13100; 0.96504; -0.22701;,
-0.13100; 0.96504; -0.22701;,
-0.13098; 0.96501; -0.22714;,
-0.13098; 0.96501; -0.22714;,
-0.13098; 0.96501; -0.22714;,
0.05642; 0.99157; 0.11666;,
0.05642; 0.99157; 0.11666;,
0.05642; 0.99157; 0.11666;,
-0.00573; 0.97557; 0.21962;,
-0.00573; 0.97557; 0.21962;,
-0.00573; 0.97557; 0.21962;,
0.14421; 0.96792; 0.20575;,
0.14421; 0.96792; 0.20575;,
0.14421; 0.96792; 0.20575;,
0.14123; 0.96788; 0.20798;,
0.14123; 0.96788; 0.20798;,
0.14123; 0.96788; 0.20798;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.06727; 0.99090; 0.11658;,
0.06727; 0.99090; 0.11658;,
0.06727; 0.99090; 0.11658;,
0.00000; 0.97342; 0.22904;,
0.00000; 0.97342; 0.22904;,
0.00000; 0.97342; 0.22904;,
0.06732; 0.99090; 0.11658;,
0.06732; 0.99090; 0.11658;,
0.06732; 0.99090; 0.11658;,
0.06727; 0.99090; 0.11658;,
0.13112; 0.96501; 0.22706;,
0.13112; 0.96501; 0.22706;,
0.13112; 0.96501; 0.22706;,
0.06732; 0.99090; 0.11658;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 0.97342; -0.22904;,
0.00000; 0.97342; -0.22904;,
0.00000; 0.97342; -0.22904;,
-0.13112; 0.96501; -0.22706;,
-0.13112; 0.96501; -0.22706;,
-0.13112; 0.96501; -0.22706;,
-0.04681; 0.98746; -0.15077;,
-0.04681; 0.98746; -0.15077;,
-0.04681; 0.98746; -0.15077;,
0.04073; 0.99917; 0.00000;,
0.04073; 0.99917; 0.00000;,
0.04073; 0.99917; 0.00000;,
-0.04629; 0.98727; -0.15214;,
-0.04629; 0.98727; -0.15214;,
-0.04629; 0.98727; -0.15214;,
-0.17944; 0.97830; -0.10358;,
-0.17944; 0.97830; -0.10358;,
-0.17944; 0.97830; -0.10358;,
-0.30517; 0.93586; -0.17616;,
-0.30517; 0.93586; -0.17616;,
-0.30517; 0.93586; -0.17616;,
-0.19937; 0.91709; -0.34526;,
-0.19937; 0.91709; -0.34526;,
-0.19937; 0.91709; -0.34526;,
-0.11878; 0.97138; -0.20570;,
-0.11878; 0.97138; -0.20570;,
-0.11878; 0.97138; -0.20570;,
-0.07391; 0.98902; 0.12799;,
-0.07391; 0.98902; 0.12799;,
-0.07391; 0.98902; 0.12799;,
-0.21104; 0.97078; -0.11421;,
-0.21104; 0.97078; -0.11421;,
-0.21104; 0.97078; -0.11421;,
-0.05427; 0.99853; 0.00000;,
-0.05427; 0.99853; 0.00000;,
-0.05427; 0.99853; 0.00000;,
-0.12697; 0.98370; 0.12730;,
-0.12697; 0.98370; 0.12730;,
-0.12697; 0.98370; 0.12730;,
-0.15821; 0.97036; -0.18266;,
-0.15821; 0.97036; -0.18266;,
-0.15821; 0.97036; -0.18266;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.06732; 0.99090; 0.11658;,
0.06732; 0.99090; 0.11658;,
0.06732; 0.99090; 0.11658;,
0.00000; 0.97342; 0.22904;,
0.00000; 0.97342; 0.22904;,
0.00000; 0.97342; 0.22904;,
-0.13463; 0.99090; 0.00000;,
-0.13463; 0.99090; 0.00000;,
-0.13463; 0.99090; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
-0.13112; 0.96501; 0.22706;,
-0.13112; 0.96501; 0.22706;,
-0.13112; 0.96501; 0.22706;,
-0.19839; 0.97341; 0.11452;,
-0.19839; 0.97341; 0.11452;,
-0.19839; 0.97341; 0.11452;,
-0.06732; 0.99090; 0.11658;,
-0.06732; 0.99090; 0.11658;,
-0.06732; 0.99090; 0.11658;,
0.06732; 0.99090; -0.11658;,
0.06732; 0.99090; -0.11658;,
0.06732; 0.99090; -0.11658;,
0.18467; 0.98199; 0.03988;,
0.18467; 0.98199; 0.03988;,
0.18467; 0.98199; 0.03988;,
0.04528; 0.95210; 0.30243;,
0.04528; 0.95210; 0.30243;,
0.04528; 0.95210; 0.30243;,
0.02615; 0.95235; 0.30387;,
0.02615; 0.95235; 0.30387;,
0.02615; 0.95235; 0.30387;,
0.18086; 0.98276; 0.03836;,
0.18086; 0.98276; 0.03836;,
0.18086; 0.98276; 0.03836;,
0.02691; 0.95178; 0.30561;,
0.02691; 0.95178; 0.30561;,
0.02691; 0.95178; 0.30561;,
0.02203; 0.95297; 0.30227;,
0.02203; 0.95297; 0.30227;,
0.02203; 0.95297; 0.30227;,
0.02302; 0.95344; 0.30069;,
0.02302; 0.95344; 0.30069;,
0.02302; 0.95344; 0.30069;,
0.02345; 0.95305; 0.30189;,
0.02345; 0.95305; 0.30189;,
0.02345; 0.95305; 0.30189;,
0.18248; 0.98245; 0.03872;,
0.18248; 0.98245; 0.03872;,
0.18248; 0.98245; 0.03872;,
0.02874; 0.98212; 0.18607;,
0.02874; 0.98212; 0.18607;,
0.02874; 0.98212; 0.18607;,
0.09286; 0.98886; -0.11634;,
0.09286; 0.98886; -0.11634;,
0.09286; 0.98886; -0.11634;,
0.10456; 0.99152; 0.07721;,
0.10456; 0.99152; 0.07721;,
0.10456; 0.99152; 0.07721;,
0.09403; 0.98874; -0.11641;,
0.09403; 0.98874; -0.11641;,
0.09403; 0.98874; -0.11641;,
0.09506; 0.98856; -0.11711;,
0.09506; 0.98856; -0.11711;,
0.09506; 0.98856; -0.11711;,
-0.06929; 0.95078; 0.30201;,
-0.06929; 0.95078; 0.30201;,
-0.06929; 0.95078; 0.30201;,
0.13459; 0.98991; -0.04431;,
0.13459; 0.98991; -0.04431;,
0.13459; 0.98991; -0.04431;,
-0.05757; 0.95069; 0.30476;,
-0.05757; 0.95069; 0.30476;,
-0.05757; 0.95069; 0.30476;,
-0.09904; 0.99314; -0.06217;,
-0.09904; 0.99314; -0.06217;,
-0.09904; 0.99314; -0.06217;,
0.00427; 0.99314; 0.11684;,
0.00427; 0.99314; 0.11684;,
0.00427; 0.99314; 0.11684;,
-0.13468; 0.99089; 0.00094;,
-0.13468; 0.99089; 0.00094;,
-0.13468; 0.99089; 0.00094;,
-0.13526; 0.99081; -0.00112;,
-0.13526; 0.99081; -0.00112;,
-0.13526; 0.99081; -0.00112;,
-0.04941; 0.99513; -0.08527;,
-0.04941; 0.99513; -0.08527;,
-0.04941; 0.99513; -0.08527;,
-0.13507; 0.99084; 0.00045;,
-0.13507; 0.99084; 0.00045;,
-0.13507; 0.99084; 0.00045;,
0.17038; 0.98036; -0.09928;,
0.17038; 0.98036; -0.09928;,
0.17038; 0.98036; -0.09928;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.02318; 0.99972; -0.00527;,
0.02318; 0.99972; -0.00527;,
0.02318; 0.99972; -0.00527;,
0.00874; 0.99962; -0.02621;,
0.00874; 0.99962; -0.02621;,
0.00874; 0.99962; -0.02621;,
0.31564; 0.94088; -0.12295;,
0.31564; 0.94088; -0.12295;,
0.31564; 0.94088; -0.12295;,
-0.25345; 0.95627; -0.14601;,
-0.25345; 0.95627; -0.14601;,
-0.25345; 0.95627; -0.14601;,
0.03910; 0.99682; -0.06946;,
0.03910; 0.99682; -0.06946;,
0.03910; 0.99682; -0.06946;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.03294; 0.99899; 0.03044;,
0.03294; 0.99899; 0.03044;,
0.03294; 0.99899; 0.03044;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.02843; 0.99770; 0.06154;,
0.02843; 0.99770; 0.06154;,
0.02843; 0.99770; 0.06154;,
0.01476; 0.99816; 0.05877;,
0.01476; 0.99816; 0.05877;,
0.01476; 0.99816; 0.05877;,
0.00412; 0.98003; 0.19883;,
0.00412; 0.98003; 0.19883;,
0.00412; 0.98003; 0.19883;,
0.02344; 0.99775; 0.06289;,
0.02344; 0.99775; 0.06289;,
0.02344; 0.99775; 0.06289;,
-0.06125; 0.97439; 0.21636;,
-0.06125; 0.97439; 0.21636;,
-0.06125; 0.97439; 0.21636;,
-0.05083; 0.96752; 0.24764;,
-0.05083; 0.96752; 0.24764;,
-0.05083; 0.96752; 0.24764;,
0.06973; 0.99704; 0.03230;,
0.06973; 0.99704; 0.03230;,
0.06973; 0.99704; 0.03230;,
-0.01351; 0.98553; 0.16895;,
-0.01351; 0.98553; 0.16895;,
-0.01351; 0.98553; 0.16895;,
0.00825; 0.99884; 0.04739;,
0.00825; 0.99884; 0.04739;,
0.00825; 0.99884; 0.04739;,
-0.13156; 0.99131; 0.00105;,
-0.13156; 0.99131; 0.00105;,
-0.13156; 0.99131; 0.00105;,
0.10580; 0.98436; -0.14089;,
0.10580; 0.98436; -0.14089;,
0.10580; 0.98436; -0.14089;,
0.11398; 0.98189; -0.15131;,
0.11398; 0.98189; -0.15131;,
0.11398; 0.98189; -0.15131;,
0.24186; 0.94389; 0.22489;,
0.24186; 0.94389; 0.22489;,
0.24186; 0.94389; 0.22489;,
0.04083; 0.99913; 0.00875;,
0.04083; 0.99913; 0.00875;,
0.04083; 0.99913; 0.00875;,
0.10834; 0.99033; -0.08668;,
0.10834; 0.99033; -0.08668;,
0.10834; 0.99033; -0.08668;,
0.00729; 0.99992; 0.01034;,
0.00729; 0.99992; 0.01034;,
0.00729; 0.99992; 0.01034;,
-0.05669; 0.99493; 0.08311;,
-0.05669; 0.99493; 0.08311;,
-0.05669; 0.99493; 0.08311;,
-0.06844; 0.98505; 0.15808;,
-0.06844; 0.98505; 0.15808;,
-0.06844; 0.98505; 0.15808;,
-0.06480; 0.98534; 0.15780;,
-0.06480; 0.98534; 0.15780;,
-0.06480; 0.98534; 0.15780;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
-0.02872; 0.99421; 0.10353;,
-0.02872; 0.99421; 0.10353;,
-0.02872; 0.99421; 0.10353;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00504; 0.99967; -0.02522;,
0.00504; 0.99967; -0.02522;,
0.00504; 0.99967; -0.02522;,
0.00000; 0.99961; -0.02781;,
0.00000; 0.99961; -0.02781;,
0.00000; 0.99961; -0.02781;,
-0.11706; 0.99311; -0.00553;,
-0.11706; 0.99311; -0.00553;,
-0.11706; 0.99311; -0.00553;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
-0.07463; 0.99681; 0.02829;,
-0.07463; 0.99681; 0.02829;,
-0.07463; 0.99681; 0.02829;,
-0.11775; 0.99271; 0.02584;,
-0.11775; 0.99271; 0.02584;,
-0.11775; 0.99271; 0.02584;,
-0.18896; 0.98198; 0.00000;,
-0.18896; 0.98198; 0.00000;,
-0.18896; 0.98198; 0.00000;,
-0.09811; 0.99181; 0.08176;,
-0.09811; 0.99181; 0.08176;,
-0.09811; 0.99181; 0.08176;,
-0.13963; 0.97436; -0.17644;,
-0.13963; 0.97436; -0.17644;,
-0.13963; 0.97436; -0.17644;,
-0.16976; 0.98536; -0.01550;,
-0.16976; 0.98536; -0.01550;,
-0.16976; 0.98536; -0.01550;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
-0.06732; 0.99090; 0.11658;,
-0.06732; 0.99090; 0.11658;,
-0.06732; 0.99090; 0.11658;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.06732; 0.99090; 0.11658;,
0.06732; 0.99090; 0.11658;,
0.06732; 0.99090; 0.11658;,
0.32198; 0.94622; 0.03164;,
0.32198; 0.94622; 0.03164;,
0.32198; 0.94622; 0.03164;,
0.14512; 0.96638; -0.21226;,
0.14512; 0.96638; -0.21226;,
0.14512; 0.96638; -0.21226;,
-0.18939; 0.97446; 0.12068;,
-0.18939; 0.97446; 0.12068;,
-0.18939; 0.97446; 0.12068;,
0.04923; 0.97972; -0.19424;,
0.04923; 0.97972; -0.19424;,
0.04923; 0.97972; -0.19424;,
-0.15442; 0.98762; -0.02767;,
-0.15442; 0.98762; -0.02767;,
-0.15442; 0.98762; -0.02767;,
-0.12129; 0.98190; 0.14545;,
-0.12129; 0.98190; 0.14545;,
-0.12129; 0.98190; 0.14545;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.39681; 0.91726; 0.03436;,
0.39681; 0.91726; 0.03436;,
0.39681; 0.91726; 0.03436;,
0.09469; 0.99462; -0.04203;,
0.09469; 0.99462; -0.04203;,
0.09469; 0.99462; -0.04203;,
0.47995; 0.87715; -0.01607;,
0.47995; 0.87715; -0.01607;,
0.47995; 0.87715; -0.01607;,
0.33073; 0.94299; 0.03716;,
0.33073; 0.94299; 0.03716;,
0.33073; 0.94299; 0.03716;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.04856; 0.99874; -0.01269;,
0.04856; 0.99874; -0.01269;,
0.04856; 0.99874; -0.01269;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
-0.04944; 0.99547; 0.08121;,
-0.04944; 0.99547; 0.08121;,
-0.04944; 0.99547; 0.08121;,
0.04906; 0.99869; -0.01446;,
0.04906; 0.99869; -0.01446;,
0.04906; 0.99869; -0.01446;,
-0.00016; 0.99818; 0.06038;,
-0.00016; 0.99818; 0.06038;,
-0.00016; 0.99818; 0.06038;,
0.31462; 0.89577; -0.31401;,
0.31462; 0.89577; -0.31401;,
0.31462; 0.89577; -0.31401;,
-0.31431; 0.89578; 0.31431;,
-0.31431; 0.89578; 0.31431;,
-0.31431; 0.89578; 0.31431;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.01870; 0.99713; 0.07338;,
0.01870; 0.99713; 0.07338;,
0.01870; 0.99713; 0.07338;,
-0.02374; 0.99969; -0.00809;,
-0.02374; 0.99969; -0.00809;,
-0.02374; 0.99969; -0.00809;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
-0.03285; 0.99366; 0.10756;,
-0.03285; 0.99366; 0.10756;,
-0.03285; 0.99366; 0.10756;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
-0.11053; 0.97668; 0.18404;,
-0.11053; 0.97668; 0.18404;,
-0.11053; 0.97668; 0.18404;,
-0.10872; 0.97585; 0.18949;,
-0.10872; 0.97585; 0.18949;,
-0.10872; 0.97585; 0.18949;,
-0.13941; 0.98565; 0.09519;,
-0.13941; 0.98565; 0.09519;,
-0.13941; 0.98565; 0.09519;,
-0.11053; 0.97668; 0.18404;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
-0.06254; 0.99216; 0.10819;,
-0.06254; 0.99216; 0.10819;,
-0.06254; 0.99216; 0.10819;,
-0.07575; 0.98844; 0.13130;,
-0.07575; 0.98844; 0.13130;,
-0.07575; 0.98844; 0.13130;,
0.00000; 1.00000; 0.00000;,
0.14688; 0.98249; 0.11465;,
0.14688; 0.98249; 0.11465;,
0.14688; 0.98249; 0.11465;,
0.08542; 0.96726; 0.23897;,
0.08542; 0.96726; 0.23897;,
0.08542; 0.96726; 0.23897;,
0.04158; 0.99672; -0.06950;,
0.04158; 0.99672; -0.06950;,
0.04158; 0.99672; -0.06950;,
0.04101; 0.99676; -0.06913;,
0.04101; 0.99676; -0.06913;,
0.04101; 0.99676; -0.06913;,
0.04080; 0.99670; -0.07013;,
0.04080; 0.99670; -0.07013;,
0.04080; 0.99670; -0.07013;,
0.04121; 0.99668; -0.07020;,
0.04121; 0.99668; -0.07020;,
0.04121; 0.99668; -0.07020;,
0.01020; 0.99911; -0.04103;,
0.01020; 0.99911; -0.04103;,
0.01020; 0.99911; -0.04103;,
0.04107; 0.99662; -0.07112;,
0.04107; 0.99662; -0.07112;,
0.04107; 0.99662; -0.07112;,
0.04591; 0.99817; -0.03936;,
0.04591; 0.99817; -0.03936;,
0.04591; 0.99817; -0.03936;,
0.05688; 0.99083; -0.12253;,
0.05688; 0.99083; -0.12253;,
0.05688; 0.99083; -0.12253;,
0.23529; 0.96609; -0.10633;,
0.23529; 0.96609; -0.10633;,
0.23529; 0.96609; -0.10633;,
0.15872; 0.98525; 0.06391;,
0.15872; 0.98525; 0.06391;,
0.15872; 0.98525; 0.06391;,
0.08117; 0.99429; -0.06933;,
0.08117; 0.99429; -0.06933;,
0.08117; 0.99429; -0.06933;,
0.16056; 0.96518; -0.20650;,
0.16056; 0.96518; -0.20650;,
0.16056; 0.96518; -0.20650;,
0.07235; 0.96827; 0.23922;,
0.07235; 0.96827; 0.23922;,
0.07235; 0.96827; 0.23922;,
0.07181; 0.96823; 0.23953;,
0.07181; 0.96823; 0.23953;,
0.07181; 0.96823; 0.23953;,
0.14690; 0.98238; 0.11557;,
0.14690; 0.98238; 0.11557;,
0.14690; 0.98238; 0.11557;,
0.07236; 0.96827; 0.23922;,
0.07236; 0.96827; 0.23922;,
0.07236; 0.96827; 0.23922;,
0.11856; 0.98708; 0.10779;,
0.11856; 0.98708; 0.10779;,
0.11856; 0.98708; 0.10779;,
0.06489; 0.98410; 0.16536;,
0.06489; 0.98410; 0.16536;,
0.06489; 0.98410; 0.16536;,
-0.00554; 0.99651; 0.08324;,
-0.00554; 0.99651; 0.08324;,
-0.00554; 0.99651; 0.08324;,
0.08231; 0.98218; 0.16896;,
0.08231; 0.98218; 0.16896;,
0.08231; 0.98218; 0.16896;,
-0.00649; 0.99656; 0.08256;,
-0.00649; 0.99656; 0.08256;,
-0.00649; 0.99656; 0.08256;,
-0.00475; 0.99650; 0.08345;,
-0.00475; 0.99650; 0.08345;,
-0.00475; 0.99650; 0.08345;,
-0.17225; 0.98081; 0.09136;,
-0.17225; 0.98081; 0.09136;,
-0.17225; 0.98081; 0.09136;;

290;
3; 2, 1, 0;,
3; 3, 0, 1;,
3; 6, 5, 4;,
3; 9, 8, 7;,
3; 10, 7, 8;,
3; 12, 7, 11;,
3; 12, 9, 7;,
3; 7, 10, 13;,
3; 13, 11, 7;,
3; 16, 15, 14;,
3; 18, 17, 14;,
3; 21, 20, 19;,
3; 15, 18, 14;,
3; 23, 19, 22;,
3; 19, 20, 22;,
3; 25, 24, 16;,
3; 26, 23, 22;,
3; 29, 28, 27;,
3; 14, 25, 16;,
3; 31, 28, 30;,
3; 30, 28, 29;,
3; 32, 22, 20;,
3; 33, 20, 21;,
3; 36, 35, 34;,
3; 39, 38, 37;,
3; 42, 41, 40;,
3; 44, 41, 43;,
3; 40, 45, 42;,
3; 40, 41, 44;,
3; 48, 47, 46;,
3; 51, 50, 49;,
3; 54, 53, 52;,
3; 57, 56, 55;,
3; 60, 59, 58;,
3; 63, 62, 61;,
3; 66, 65, 64;,
3; 69, 68, 67;,
3; 72, 71, 70;,
3; 75, 74, 73;,
3; 78, 77, 76;,
3; 81, 80, 79;,
3; 80, 81, 82;,
3; 85, 84, 83;,
3; 86, 80, 82;,
3; 89, 88, 87;,
3; 92, 91, 90;,
3; 94, 93, 90;,
3; 92, 95, 91;,
3; 93, 94, 96;,
3; 90, 91, 94;,
3; 99, 98, 97;,
3; 101, 98, 100;,
3; 104, 103, 102;,
3; 107, 106, 105;,
3; 110, 109, 108;,
3; 113, 112, 111;,
3; 116, 115, 114;,
3; 119, 118, 117;,
3; 122, 121, 120;,
3; 125, 124, 123;,
3; 104, 102, 126;,
3; 129, 128, 127;,
3; 132, 131, 130;,
3; 135, 134, 133;,
3; 130, 136, 132;,
3; 139, 138, 137;,
3; 142, 141, 140;,
3; 136, 130, 143;,
3; 146, 145, 144;,
3; 149, 148, 147;,
3; 152, 151, 150;,
3; 153, 146, 144;,
3; 148, 155, 154;,
3; 149, 155, 148;,
3; 157, 154, 156;,
3; 154, 155, 156;,
3; 158, 154, 157;,
3; 161, 160, 159;,
3; 164, 163, 162;,
3; 167, 166, 165;,
3; 170, 169, 168;,
3; 173, 172, 171;,
3; 176, 175, 174;,
3; 179, 178, 177;,
3; 182, 181, 180;,
3; 185, 184, 183;,
3; 186, 184, 185;,
3; 189, 188, 187;,
3; 192, 191, 190;,
3; 195, 194, 193;,
3; 198, 197, 196;,
3; 201, 200, 199;,
3; 204, 203, 202;,
3; 207, 206, 205;,
3; 210, 209, 208;,
3; 213, 212, 211;,
3; 216, 215, 214;,
3; 217, 213, 211;,
3; 220, 219, 218;,
3; 223, 222, 221;,
3; 226, 225, 224;,
3; 227, 220, 218;,
3; 230, 229, 228;,
3; 231, 224, 225;,
3; 234, 233, 232;,
3; 235, 232, 233;,
3; 238, 237, 236;,
3; 241, 240, 239;,
3; 244, 243, 242;,
3; 247, 246, 245;,
3; 250, 249, 248;,
3; 253, 252, 251;,
3; 256, 255, 254;,
3; 259, 258, 257;,
3; 262, 261, 260;,
3; 265, 264, 263;,
3; 268, 267, 266;,
3; 271, 270, 269;,
3; 274, 273, 272;,
3; 277, 276, 275;,
3; 280, 279, 278;,
3; 281, 278, 279;,
3; 283, 278, 282;,
3; 283, 280, 278;,
3; 278, 281, 284;,
3; 284, 282, 278;,
3; 287, 286, 285;,
3; 290, 289, 288;,
3; 293, 292, 291;,
3; 296, 295, 294;,
3; 299, 298, 297;,
3; 302, 301, 300;,
3; 305, 304, 303;,
3; 308, 307, 306;,
3; 311, 310, 309;,
3; 314, 313, 312;,
3; 317, 316, 315;,
3; 320, 319, 318;,
3; 323, 322, 321;,
3; 326, 325, 324;,
3; 329, 328, 327;,
3; 332, 331, 330;,
3; 335, 334, 333;,
3; 338, 337, 336;,
3; 341, 340, 339;,
3; 344, 343, 342;,
3; 347, 346, 345;,
3; 350, 349, 348;,
3; 353, 352, 351;,
3; 356, 355, 354;,
3; 359, 358, 357;,
3; 362, 361, 360;,
3; 365, 364, 363;,
3; 368, 367, 366;,
3; 371, 370, 369;,
3; 374, 373, 372;,
3; 377, 376, 375;,
3; 380, 379, 378;,
3; 383, 382, 381;,
3; 385, 381, 384;,
3; 381, 382, 384;,
3; 388, 387, 386;,
3; 391, 390, 389;,
3; 394, 393, 392;,
3; 397, 396, 395;,
3; 400, 399, 398;,
3; 403, 402, 401;,
3; 406, 405, 404;,
3; 409, 408, 407;,
3; 412, 411, 410;,
3; 415, 414, 413;,
3; 418, 417, 416;,
3; 421, 420, 419;,
3; 424, 423, 422;,
3; 427, 426, 425;,
3; 430, 429, 428;,
3; 433, 432, 431;,
3; 436, 435, 434;,
3; 439, 438, 437;,
3; 442, 441, 440;,
3; 445, 444, 443;,
3; 448, 447, 446;,
3; 451, 450, 449;,
3; 454, 453, 452;,
3; 457, 456, 455;,
3; 460, 459, 458;,
3; 463, 462, 461;,
3; 466, 465, 464;,
3; 469, 468, 467;,
3; 472, 471, 470;,
3; 474, 473, 467;,
3; 468, 475, 467;,
3; 469, 467, 476;,
3; 467, 473, 476;,
3; 479, 478, 477;,
3; 482, 481, 480;,
3; 485, 484, 483;,
3; 488, 487, 486;,
3; 491, 490, 489;,
3; 494, 493, 492;,
3; 497, 496, 495;,
3; 500, 499, 498;,
3; 503, 502, 501;,
3; 506, 505, 504;,
3; 509, 508, 507;,
3; 512, 511, 510;,
3; 514, 507, 513;,
3; 514, 509, 507;,
3; 517, 516, 515;,
3; 520, 519, 518;,
3; 523, 522, 521;,
3; 526, 525, 524;,
3; 529, 528, 527;,
3; 532, 531, 530;,
3; 535, 534, 533;,
3; 538, 537, 536;,
3; 536, 537, 539;,
3; 541, 536, 540;,
3; 536, 539, 540;,
3; 544, 543, 542;,
3; 547, 546, 545;,
3; 550, 549, 548;,
3; 553, 552, 551;,
3; 556, 555, 554;,
3; 555, 556, 557;,
3; 556, 559, 558;,
3; 554, 559, 556;,
3; 561, 559, 560;,
3; 558, 559, 561;,
3; 562, 561, 560;,
3; 563, 561, 562;,
3; 557, 564, 555;,
3; 564, 565, 555;,
3; 568, 567, 566;,
3; 571, 570, 569;,
3; 570, 573, 572;,
3; 576, 575, 574;,
3; 579, 578, 577;,
3; 582, 581, 580;,
3; 585, 584, 583;,
3; 588, 587, 586;,
3; 591, 590, 589;,
3; 570, 572, 569;,
3; 594, 593, 592;,
3; 597, 596, 595;,
3; 600, 599, 598;,
3; 601, 589, 590;,
3; 604, 603, 602;,
3; 605, 599, 600;,
3; 608, 607, 606;,
3; 610, 607, 609;,
3; 613, 612, 611;,
3; 615, 612, 614;,
3; 618, 617, 616;,
3; 620, 617, 619;,
3; 622, 612, 621;,
3; 624, 612, 623;,
3; 627, 626, 625;,
3; 630, 629, 628;,
3; 633, 632, 631;,
3; 625, 626, 634;,
3; 637, 636, 635;,
3; 640, 639, 638;,
3; 643, 642, 641;,
3; 635, 636, 644;,
3; 647, 646, 645;,
3; 650, 649, 648;,
3; 653, 652, 651;,
3; 656, 655, 654;,
3; 659, 658, 657;,
3; 662, 661, 660;,
3; 665, 664, 663;,
3; 668, 667, 666;,
3; 671, 670, 669;,
3; 674, 673, 672;,
3; 677, 676, 675;,
3; 680, 679, 678;,
3; 683, 682, 681;,
3; 686, 685, 684;,
3; 689, 688, 687;,
3; 692, 691, 690;,
3; 695, 694, 693;,
3; 698, 697, 696;,
3; 701, 700, 699;,
3; 704, 703, 702;,
3; 707, 706, 705;,
3; 710, 709, 708;,
3; 713, 712, 711;,
3; 716, 715, 714;,
3; 719, 718, 717;;
}
MeshTextureCoords {
720;
-0.13440; 1.00000;,
1.39929; 0.54834;,
1.39929; 1.88538;,
-0.13440; 0.33997;,
1.39929; 0.11462;,
-0.13440; -0.07666;,
-0.13440; -0.77087;,
0.39929; 1.34375;,
-1.13440; 2.22913;,
-1.13440; 0.45837;,
0.39929; 3.11462;,
1.93286; 0.45837;,
0.39929; -0.42712;,
1.93286; 2.22913;,
-0.37073; 0.90832;,
0.74890; 0.26013;,
1.10242; 0.61365;,
-1.60071; 0.11462;,
-0.06714; -0.77087;,
0.98462; 0.26013;,
1.28686; 0.52649;,
0.92566; 0.31909;,
1.46643; 0.11462;,
0.86670; 0.14221;,
0.29114; 1.42493;,
0.10071; 1.37964;,
0.76575; -0.28992;,
-0.07605; 1.79211;,
-1.60071; 1.88538;,
-0.13501; 1.61536;,
-0.60644; 1.14404;,
-1.60071; 0.54834;,
1.39710; 0.55469;,
1.19080; 0.58423;,
-0.84692; 1.09888;,
-0.13440; 0.68750;,
-0.13440; 2.45837;,
-0.84692; 1.09888;,
-1.66797; -0.19788;,
-0.13440; 0.68750;,
1.08728; 0.13440;,
0.35254; 0.29712;,
0.96594; -0.05713;,
-0.13440; 0.68750;,
0.50732; 0.46924;,
1.39929; -0.19788;,
1.39929; 1.57288;,
-0.13440; 2.45837;,
0.50732; 0.46924;,
0.50732; 0.46924;,
-0.13440; 2.45837;,
-0.13440; 0.68750;,
-0.13440; -1.08337;,
0.96594; -0.05713;,
0.35254; 0.29712;,
-0.13440; -1.08337;,
1.39929; -0.19788;,
0.96594; -0.05713;,
0.35254; 0.29712;,
-1.66797; -0.19788;,
-0.13440; -1.08337;,
-1.66797; -0.19788;,
0.35254; 0.29712;,
-0.13440; 0.68750;,
1.39929; 0.77148;,
1.39929; 1.57288;,
0.50732; 0.46924;,
1.08728; 0.13440;,
1.39929; 0.77148;,
0.50732; 0.46924;,
1.39929; -0.19788;,
1.39929; 0.77148;,
1.08728; 0.13440;,
0.13440; 0.46851;,
-1.06714; -0.54163;,
0.46643; -1.42712;,
-1.06714; 1.22913;,
-1.06714; -0.54163;,
0.13440; 0.46851;,
-0.23425; 1.71008;,
0.48328; 0.87268;,
0.46643; 2.11462;,
2.00000; 1.22913;,
0.46643; -1.42712;,
2.00000; -0.54163;,
0.48328; 0.87268;,
2.00000; -0.54163;,
0.46643; -1.42712;,
0.48328; 0.87268;,
0.13440; 0.46851;,
0.00000; -0.77087;,
-0.92322; -0.12500;,
-1.53357; 0.11462;,
1.53357; 0.11462;,
0.82556; -0.12500;,
-1.60290; 0.55469;,
1.43628; 0.48572;,
0.00000; 1.00000;,
1.00000; 1.00000;,
1.00000; 0.00000;,
0.00000; 1.00000;,
1.00000; 0.00000;,
-0.20471; 0.78113;,
-1.13440; 1.91663;,
-1.13440; 1.02405;,
-1.13440; 1.91663;,
0.39929; 1.46362;,
0.39929; 2.80212;,
1.41748; 0.54419;,
1.93286; 0.14587;,
1.93286; 0.51123;,
-0.20471; 0.78113;,
-1.13440; 0.14587;,
0.39929; -0.73962;,
1.41748; 0.54419;,
0.39929; -0.73962;,
1.93286; 0.14587;,
0.39929; -0.73962;,
1.41748; 0.54419;,
0.67212; 1.02014;,
0.67212; 1.02014;,
0.39929; 1.46362;,
-0.20471; 0.78113;,
0.39929; 1.46362;,
-1.13440; 1.91663;,
-0.20471; 0.78113;,
-1.13440; 0.14587;,
-0.20471; 0.78113;,
0.39929; -0.73962;,
0.67212; 1.02014;,
0.39929; 0.71875;,
-1.13440; 1.60413;,
-0.36755; 0.27600;,
-1.13440; 1.60413;,
0.39929; 0.71875;,
0.39929; 2.48962;,
0.39929; -0.16663;,
-0.36755; 0.27600;,
-1.13440; 1.60413;,
-1.13440; -0.16663;,
1.16602; 0.27600;,
0.39929; -0.16663;,
1.93286; -0.16663;,
1.16602; 0.27600;,
1.16602; 0.27600;,
1.93286; -0.16663;,
1.93286; 1.60413;,
1.93286; -0.16663;,
0.39929; -0.16663;,
0.39929; -1.05212;,
1.93286; 1.60413;,
0.39929; 2.48962;,
0.39929; 0.71875;,
0.39929; 0.71875;,
-0.36755; 0.27600;,
-0.11780; -0.68140;,
-0.47864; -0.47314;,
-0.78052; -0.37097;,
-1.13440; -0.16663;,
-0.06714; 2.45837;,
-1.60071; 1.57288;,
-0.06714; 0.68750;,
-0.06714; 0.68750;,
1.46643; 0.68750;,
1.46643; 1.57288;,
1.46643; -0.19788;,
1.46643; 0.68750;,
1.29492; -0.09888;,
-0.06714; 2.45837;,
-0.06714; 0.68750;,
1.46643; 1.57288;,
-0.06714; 0.68750;,
1.07837; 0.02612;,
1.46643; 0.68750;,
1.29492; -0.09888;,
1.46643; 0.68750;,
1.07837; 0.02612;,
0.93530; -0.20154;,
1.29492; -0.09888;,
1.07837; 0.02612;,
0.93530; -0.20154;,
1.10315; -0.36499;,
1.29492; -0.09888;,
0.58899; -0.29810;,
0.60425; -0.52258;,
0.67236; -0.38403;,
0.70837; -0.52258;,
0.93530; -0.20154;,
0.67236; -0.38403;,
1.10315; -0.36499;,
0.93530; -0.20154;,
0.58899; -0.29810;,
0.67236; -0.38403;,
-0.06714; 0.68750;,
-1.60071; 0.77148;,
-1.60071; -0.19788;,
-0.06714; 0.68750;,
-1.60071; 1.57288;,
-1.60071; 0.77148;,
0.34143; 1.11462;,
2.00000; 0.14587;,
2.00000; 1.91663;,
2.00000; 0.14587;,
0.34143; 1.11462;,
0.46643; -0.73962;,
0.46643; -0.73962;,
-0.49915; 0.54419;,
-1.06714; 0.14587;,
0.46643; -0.73962;,
0.34143; 1.11462;,
-0.49915; 0.54419;,
2.00000; 1.91663;,
0.46643; 2.80212;,
0.34143; 2.32288;,
-1.06714; 0.14587;,
-0.49915; 0.54419;,
-1.06714; 0.51123;,
0.34143; 1.11462;,
-0.06714; 1.37500;,
-1.60071; 2.26038;,
-1.60071; 0.48962;,
-1.60071; 2.26038;,
-0.06714; 1.37500;,
-0.06714; 3.14587;,
1.46643; 0.48962;,
-0.06714; 1.37500;,
-0.06714; -0.39587;,
-0.06714; -0.39587;,
1.46643; 2.26038;,
-0.06714; 3.14587;,
-0.06714; 1.37500;,
1.46643; 2.26038;,
0.53357; 1.34375;,
-1.00000; 2.22913;,
-1.00000; 0.45837;,
0.53357; 3.11462;,
2.06714; 0.45837;,
0.53357; 1.34375;,
0.53357; -0.42712;,
0.53357; 1.34375;,
-1.00000; 0.45837;,
0.53357; -0.42712;,
0.53357; 1.34375;,
2.06714; 0.77637;,
2.06714; 2.22913;,
0.53357; 3.11462;,
0.53357; 1.34375;,
2.06714; 2.22913;,
0.53357; 1.34375;,
2.06714; 0.45837;,
2.06714; 0.77637;,
-0.76685; 1.13025;,
0.00000; 2.45837;,
-1.53357; 1.57288;,
-0.76685; 1.13025;,
0.00000; 0.68750;,
0.00000; 2.45837;,
-0.76685; 1.13025;,
-1.53357; 0.68750;,
0.00000; 0.68750;,
-0.76685; 1.13025;,
-1.53357; 1.57288;,
-1.53357; 0.68750;,
0.00000; 0.68750;,
-1.53357; -0.19788;,
0.00000; -1.08337;,
0.00000; 0.68750;,
-1.53357; 0.68750;,
-1.53357; -0.19788;,
0.00000; 0.68750;,
1.53357; -0.19788;,
1.53357; 1.57288;,
1.53357; -0.19788;,
0.00000; 0.68750;,
0.00000; -1.08337;,
1.53357; 1.57288;,
0.00000; 2.45837;,
0.00000; 0.68750;,
0.46643; 0.71875;,
-1.06714; 1.60413;,
-1.06714; -0.16663;,
0.46643; 2.48962;,
2.00000; -0.16663;,
0.46643; -1.05212;,
2.00000; 1.60413;,
0.00000; 1.37500;,
-1.53357; 2.26038;,
-1.53357; 0.48962;,
-1.53357; 2.26038;,
0.00000; 1.37500;,
0.00000; 3.14587;,
1.53357; 0.48962;,
0.00000; 1.37500;,
0.00000; -0.39587;,
0.00000; 1.37500;,
-1.53357; 0.48962;,
0.00000; -0.39587;,
1.53357; 2.26038;,
0.00000; 3.14587;,
0.00000; 1.37500;,
0.00000; 1.37500;,
1.53357; 0.48962;,
1.53357; 2.26038;,
0.06714; 0.68750;,
-1.46643; 1.57288;,
-1.46643; -0.19788;,
-1.46643; 1.57288;,
0.06714; 0.68750;,
0.06714; 2.45837;,
0.61548; 0.37097;,
0.93665; 1.18945;,
0.60071; 0.99561;,
0.06714; 0.68750;,
-1.46643; -0.19788;,
0.06714; -1.08337;,
0.86768; 0.22534;,
0.61938; -0.34460;,
1.03796; -0.17468;,
0.86768; 0.22534;,
0.93665; 1.18945;,
0.61548; 0.37097;,
0.49512; -0.56665;,
1.03796; -0.17468;,
0.61938; -0.34460;,
0.61548; 0.37097;,
0.61938; -0.34460;,
0.86768; 0.22534;,
0.49512; -0.56665;,
1.60071; -0.19788;,
1.03796; -0.17468;,
1.60071; -0.19788;,
0.49512; -0.56665;,
0.06714; -1.08337;,
0.93665; 1.18945;,
1.60071; -0.19788;,
1.60071; 1.57288;,
1.03796; -0.17468;,
1.60071; -0.19788;,
0.99670; 0.21472;,
0.60071; 0.99561;,
0.06714; 2.45837;,
0.06714; 0.68750;,
0.99670; 0.21472;,
1.60071; -0.19788;,
0.93665; 1.18945;,
1.60071; 1.57288;,
0.06714; 2.45837;,
0.93665; 1.18945;,
0.93665; 1.18945;,
0.06714; 2.45837;,
0.60071; 0.99561;,
0.06714; 0.68750;,
0.06714; -1.08337;,
0.43567; 0.47473;,
0.60071; 0.99561;,
0.06714; 0.68750;,
0.43567; 0.47473;,
0.43567; 0.47473;,
0.06714; -1.08337;,
0.51086; -0.33838;,
1.39929; 2.26038;,
-0.13440; 3.14587;,
0.08899; 1.50391;,
0.08899; 1.50391;,
1.39929; 0.48962;,
1.39929; 2.26038;,
0.28235; 0.16687;,
1.39929; 0.48962;,
0.71643; 0.51892;,
1.39929; 0.48962;,
0.28235; 0.16687;,
-0.13440; -0.39587;,
-0.13440; 1.37500;,
0.71643; 0.51892;,
0.08899; 1.50391;,
-0.13440; 1.37500;,
0.28235; 0.16687;,
0.71643; 0.51892;,
1.39929; 0.48962;,
0.08899; 1.50391;,
0.71643; 0.51892;,
-0.70972; 2.43909;,
-0.13440; 3.14587;,
-0.97400; 2.66101;,
0.08899; 1.50391;,
-0.13440; 1.37500;,
0.08899; 1.50391;,
0.44470; 0.33142;,
0.71643; 0.51892;,
0.71643; 0.51892;,
0.44470; 0.33142;,
0.56970; 0.28980;,
1.05774; -0.16321;,
0.66956; 0.83142;,
0.60071; -0.42712;,
-0.93286; 2.22913;,
-0.93286; 0.77637;,
-0.28955; 1.99560;,
0.88672; 1.59058;,
0.97754; 0.94141;,
1.98706; 0.37329;,
0.66956; 0.83142;,
1.05774; -0.16321;,
1.38428; 0.02527;,
-0.28955; 1.99560;,
0.18335; 1.82398;,
-0.21362; 2.07800;,
0.97754; 0.94141;,
1.72937; 0.22449;,
1.98706; 0.37329;,
-0.21362; 2.07800;,
-0.13721; 2.45056;,
-0.25085; 2.39832;,
-0.21362; 2.07800;,
0.18335; 1.82398;,
-0.13721; 2.45056;,
-0.65381; 2.39026;,
-0.20056; 2.32849;,
-0.21509; 2.37915;,
0.35974; 2.10767;,
-0.20056; 2.32849;,
-0.65381; 2.39026;,
-0.21509; 2.37915;,
-0.20056; 2.32849;,
-0.15259; 2.34302;,
-0.20056; 2.32849;,
0.35974; 2.10767;,
-0.15259; 2.34302;,
0.35974; 2.10767;,
-0.10791; 2.70544;,
-0.15259; 2.41516;,
-0.15259; 2.34302;,
0.35974; 2.10767;,
-0.15259; 2.41516;,
-0.10791; 2.70544;,
-0.65381; 2.39026;,
-0.21509; 2.37915;,
-0.15259; 2.41516;,
-0.10791; 2.70544;,
-0.21509; 2.37915;,
-0.93286; 0.77637;,
0.60071; -0.42712;,
0.66956; 0.83142;,
0.60071; -0.42712;,
-0.93286; 0.77637;,
-0.93286; 0.45837;,
-0.93286; 0.77637;,
0.55701; 1.44824;,
0.18335; 1.82398;,
-0.93286; 0.77637;,
0.18335; 1.82398;,
-0.28955; 1.99560;,
0.55701; 1.44824;,
-0.93286; 0.77637;,
0.66956; 0.83142;,
0.75574; 1.09290;,
-0.93286; 1.91663;,
0.33923; 0.79883;,
-0.93286; 1.91663;,
-0.93286; 0.14587;,
0.33923; 0.79883;,
0.60071; 2.80212;,
0.75574; 1.09290;,
1.18359; 2.46558;,
0.60071; 2.80212;,
-0.93286; 1.91663;,
0.75574; 1.09290;,
0.71411; 0.38452;,
0.33923; 0.79883;,
0.46411; 0.11365;,
2.13440; 1.91663;,
1.20447; 2.44470;,
0.77661; 1.09290;,
1.40161; 0.00952;,
1.40161; 0.34290;,
0.75574; 1.09290;,
0.98486; 0.00952;,
0.60071; -0.73962;,
0.98486; 0.00952;,
0.46411; 0.11365;,
0.60071; -0.73962;,
1.40161; 0.00952;,
0.98486; 0.00952;,
-0.91199; 0.14587;,
0.60071; -0.73962;,
0.46411; 0.11365;,
1.40161; 0.34290;,
0.77661; 1.09290;,
0.71411; 0.38452;,
2.13440; 1.91663;,
0.77661; 1.09290;,
1.79773; 0.63879;,
-0.91199; 0.14587;,
0.46411; 0.11365;,
0.31836; 0.77808;,
1.73254; -0.08057;,
1.40161; 0.34290;,
1.40161; 0.00952;,
1.79773; 0.63879;,
0.77661; 1.09290;,
1.40161; 0.34290;,
0.60071; -0.73962;,
1.73254; -0.08057;,
1.40161; 0.00952;,
1.79773; 0.63879;,
1.40161; 0.34290;,
1.73254; -0.08057;,
0.53357; 0.71875;,
-1.00000; 1.60413;,
-1.00000; -0.16663;,
-1.00000; 1.60413;,
0.53357; 0.71875;,
0.53357; 2.48962;,
2.06714; 1.60413;,
0.53357; -0.16663;,
2.06714; 1.60413;,
0.53357; 2.48962;,
0.53357; 0.71875;,
-1.39929; -0.19788;,
-0.95935; 0.13257;,
-1.05530; 0.40344;,
-0.95935; 0.13257;,
-1.39929; -0.19788;,
-0.81641; -0.53442;,
-0.21521; 0.47644;,
-0.32080; 1.14600;,
-0.43310; 0.81726;,
-0.81641; -0.53442;,
-0.50684; 0.01807;,
-0.95935; 0.13257;,
-0.32080; 1.14600;,
-0.75684; 1.68469;,
-0.73474; 1.06873;,
-0.73474; 1.06873;,
-0.43310; 0.81726;,
-0.32080; 1.14600;,
0.28760; 1.94336;,
-0.01294; 2.37329;,
-0.27063; 2.22449;,
0.30090; 2.12378;,
0.68359; 2.29114;,
0.76550; 2.10486;,
-0.94226; 1.83679;,
-1.39929; 1.57288;,
-1.07190; 0.90112;,
0.68359; 2.29114;,
0.76550; 2.10486;,
1.01257; 2.56152;,
-1.07190; 0.90112;,
-1.39929; 1.57288;,
-1.05530; 0.40344;,
-1.05530; 0.40344;,
-1.39929; 1.57288;,
-1.39929; -0.19788;,
1.86560; 1.02405;,
1.86560; 1.91663;,
1.48340; 1.01807;,
0.33203; 1.03125;,
1.61560; 0.37830;,
1.86560; 0.14587;,
1.02600; -0.33899;,
1.27564; 0.10303;,
0.12720; -0.12598;,
0.12720; 0.08228;,
0.33203; 2.59375;,
0.33203; 2.80212;,
-1.56372; 0.48572;,
-1.46643; 0.11462;,
-1.00391; -0.01514;,
-1.60535; 0.99878;,
-0.78040; 1.58801;,
-0.89832; 1.70593;,
-1.12109; 0.85120;,
-0.35095; 0.84863;,
-0.82715; 0.16162;,
-1.12109; 0.85120;,
-1.32800; 0.72144;,
-1.46643; 0.11462;,
0.06714; -0.77087;,
-1.00391; -0.01514;,
-0.82715; 0.16162;,
-0.35095; 0.84863;,
-1.12109; 0.85120;,
-1.56372; 0.48572;,
-1.00391; -0.01514;,
-1.53430; 0.51514;,
-0.82715; 0.16162;,
-1.32800; 0.72144;,
-1.35754; 0.69190;,
0.39905; 0.47363;,
0.34619; -0.60974;,
0.63477; 0.23792;,
-0.82715; 0.16162;,
0.39905; 0.47363;,
-0.35095; 0.84863;,
0.63477; 0.23792;,
0.34619; -0.60974;,
0.89209; -0.29456;,
0.88513; 0.87134;,
1.03247; 0.72400;,
1.03247; 1.01868;,
-0.82715; 0.16162;,
-1.60535; 0.99878;,
-1.32800; 0.72144;,
-1.12109; 0.85120;,
1.17981; 0.87134;,
0.00000; 1.00000;,
1.00000; 1.00000;,
1.00000; 0.00000;,
0.00000; 1.00000;,
1.00000; 0.00000;,
0.00000; 1.00000;,
1.00000; 1.00000;,
1.00000; 0.00000;,
0.00000; 1.00000;,
1.00000; 0.00000;,
0.00000; 1.00000;,
1.00000; 1.00000;,
1.00000; 0.00000;,
0.00000; 1.00000;,
1.00000; 0.00000;,
0.00000; 1.00000;,
1.00000; 0.00000;,
0.00000; 1.00000;,
1.00000; 0.00000;,
0.03125; 0.86597;,
-0.15332; 0.48450;,
0.38831; 0.65124;,
-0.15332; 0.48450;,
-0.59375; -0.21741;,
0.38831; 0.65124;,
0.20886; 1.98560;,
-0.51038; 0.69922;,
0.03125; 0.86597;,
-0.51038; 0.69922;,
0.52136; 2.52686;,
0.56970; 1.77734;,
0.88220; 2.31860;,
0.20886; 1.98560;,
0.03125; 0.86597;,
0.56970; 1.77734;,
-0.51038; 0.69922;,
0.20886; 1.98560;,
0.15478; 2.01685;,
0.20886; 1.98560;,
-0.73279; 0.87744;,
-0.46643; 1.03125;,
-0.67810; 1.15344;,
1.06714; 1.91663;,
-0.46643; 2.80212;,
-0.46643; 1.03125;,
-0.73279; 0.87744;,
-0.46643; 0.46350;,
-0.46643; 1.03125;,
-0.46643; 0.46350;,
-0.73279; 0.87744;,
-1.20862; 0.60278;,
-1.08862; -0.10278;,
-1.20862; 0.60278;,
-2.00000; 0.14587;,
-1.08862; -0.10278;,
-0.46643; 0.46350;,
-1.20862; 0.60278;,
-0.46643; -0.73962;,
-0.42053; 0.26379;,
-1.08862; -0.10278;,
-2.00000; 0.14587;,
-0.46643; -0.73962;,
-1.08862; -0.10278;,
-0.42053; 0.26379;,
-0.46643; -0.73962;,
0.34778; 0.15955;,
0.36450; 0.38696;,
-0.42053; 0.26379;,
0.34778; 0.15955;,
0.34778; 0.15955;,
0.65185; 0.38562;,
0.36450; 0.38696;,
1.06714; 0.14587;,
0.34778; 0.15955;,
-0.46643; -0.73962;,
0.36475; 0.55139;,
-0.46643; 1.03125;,
-0.46643; 0.46350;,
1.06714; 0.14587;,
0.65185; 0.38562;,
0.34778; 0.15955;,
-0.46643; 2.80212;,
-0.91492; 1.78589;,
-0.46643; 1.03125;,
-0.91492; 1.78589;,
-0.67810; 1.15344;,
-0.46643; 1.03125;,
-2.00000; 1.91663;,
-2.00000; 0.14587;,
-1.20862; 0.60278;,
-0.91492; 1.78589;,
-0.46643; 2.80212;,
-2.00000; 1.91663;,
-2.00000; 1.91663;,
-0.88159; 0.88623;,
-0.78284; 1.21399;,
-2.00000; 1.91663;,
-1.20862; 0.60278;,
-0.88159; 0.88623;,
1.06714; 0.14587;,
1.06714; 1.91663;,
0.65185; 0.38562;,
-2.00000; 1.91663;,
-0.78284; 1.21399;,
-0.91492; 1.78589;,
0.36475; 0.55139;,
1.06714; 1.91663;,
-0.46643; 1.03125;,
0.65185; 0.38562;,
1.06714; 1.91663;,
0.36475; 0.55139;,
2.60071; -0.73962;,
1.08801; 0.14587;,
1.06714; -1.60413;;
}

}

}

Frame frmpart19_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part19 {
102;
1.93000; -0.68000; -34.94000;,
0.80000; -0.68000; -33.81000;,
1.93000; 0.92000; -34.94000;,
0.80000; 0.92000; -33.81000;,
-3.51000; 0.72000; -45.57000;,
-3.44000; 0.72000; -41.44500;,
-3.51000; 1.72000; -45.57000;,
-3.44000; 1.72000; -41.44500;,
-3.44000; 0.72000; -41.44500;,
-0.61500; 0.72000; -38.62000;,
-3.44000; 1.72000; -41.44500;,
-0.61500; 1.72000; -38.62000;,
-5.99000; -0.68000; -42.86000;,
1.93000; -0.68000; -34.94000;,
-5.99000; 0.92000; -42.86000;,
1.93000; 0.92000; -34.94000;,
1.50500; 0.72000; -38.62000;,
1.50500; 1.72000; -38.62000;,
-0.61500; 0.72000; -38.62000;,
-0.61500; 1.72000; -38.62000;,
12.74000; 0.72000; -34.19500;,
16.32000; 0.72000; -35.94000;,
12.74000; 1.72000; -34.19500;,
16.32000; 1.72000; -35.94000;,
7.74000; -0.68000; -33.39500;,
7.74000; 0.92000; -33.39500;,
6.74000; -0.68000; -32.39500;,
6.74000; 0.92000; -32.39500;,
3.34500; -0.68000; -35.79000;,
6.74000; -0.68000; -32.39500;,
3.34500; 0.92000; -35.79000;,
6.74000; 0.92000; -32.39500;,
7.34000; 0.72000; -34.19500;,
9.34000; 0.72000; -34.19500;,
7.34000; 1.72000; -34.19500;,
9.34000; 1.72000; -34.19500;,
7.34000; 0.72000; -34.19500;,
7.34000; 1.72000; -34.19500;,
6.63500; 0.72000; -33.49000;,
6.63500; 1.72000; -33.49000;,
1.50500; 0.72000; -38.62000;,
6.63500; 0.72000; -33.49000;,
1.50500; 1.72000; -38.62000;,
6.63500; 1.72000; -33.49000;,
1.08500; -0.68000; -33.52500;,
3.34500; -0.68000; -35.79000;,
1.08500; 0.92000; -33.52500;,
3.34500; 0.92000; -35.79000;,
10.14000; 0.92000; -33.39500;,
10.14000; -0.68000; -33.39500;,
10.14000; 0.92000; -33.79501;,
11.94000; 0.92000; -33.39500;,
11.94000; 0.92000; -33.79501;,
11.94000; -0.68000; -33.39500;,
11.94000; -0.68000; -34.99500;,
11.94000; 0.92000; -34.99500;,
10.14000; -0.68000; -34.99500;,
10.14000; 0.92000; -34.99500;,
14.34000; -0.68000; -33.39500;,
16.60500; -0.68000; -35.66000;,
14.34000; 0.92000; -33.39500;,
16.60500; 0.92000; -35.66000;,
12.74000; 0.92000; -33.39500;,
12.74000; -0.68000; -33.39500;,
14.34000; 0.92000; -33.39500;,
14.34000; -0.68000; -33.39500;,
9.34000; -0.68000; -33.39500;,
7.74000; 0.92000; -33.39500;,
7.74000; -0.68000; -33.39500;,
9.34000; 0.92000; -33.39500;,
20.93500; 3.54500; -43.55500;,
20.93500; 0.82000; -43.55500;,
22.40500; 3.54500; -42.95000;,
22.40500; 0.82000; -42.95000;,
22.40500; 3.54500; -42.95000;,
22.40500; 0.82000; -42.95000;,
23.01500; 3.54500; -44.42000;,
23.01500; 0.82000; -44.42001;,
21.54500; 3.54500; -45.02500;,
21.54500; 0.82000; -45.02500;,
20.93500; 3.54500; -43.55500;,
20.93500; 0.82000; -43.55500;,
15.91500; 2.59500; -43.63000;,
15.91500; 0.22000; -43.63000;,
15.91500; 2.59500; -44.34500;,
15.91500; 0.22000; -44.34500;,
15.32000; 0.22000; -43.63000;,
15.32000; 2.59500; -43.63000;,
15.32000; 0.22000; -44.34500;,
15.32000; 2.59500; -44.34500;,
15.32000; 2.59500; -43.63000;,
15.32000; 0.22000; -43.63000;,
15.91500; 2.59500; -43.63000;,
15.91500; 0.22000; -43.63000;,
17.73500; 0.92000; -36.79000;,
17.73500; -0.68000; -36.79000;,
21.13000; 0.92000; -40.18500;,
21.13000; -0.68000; -40.18500;,
20.84500; 1.72000; -40.46500;,
17.45000; 1.72000; -37.07000;,
20.84500; 0.72000; -40.46500;,
17.45000; 0.72000; -37.07000;;

52;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 7, 5, 6;,
3; 10, 9, 8;,
3; 11, 9, 10;,
3; 14, 13, 12;,
3; 15, 13, 14;,
3; 18, 17, 16;,
3; 19, 17, 18;,
3; 22, 21, 20;,
3; 23, 21, 22;,
3; 26, 25, 24;,
3; 27, 25, 26;,
3; 30, 29, 28;,
3; 31, 29, 30;,
3; 34, 33, 32;,
3; 35, 33, 34;,
3; 38, 37, 36;,
3; 39, 37, 38;,
3; 42, 41, 40;,
3; 43, 41, 42;,
3; 46, 45, 44;,
3; 47, 45, 46;,
3; 50, 49, 48;,
3; 53, 52, 51;,
3; 55, 52, 54;,
3; 54, 52, 53;,
3; 57, 56, 50;,
3; 50, 56, 49;,
3; 60, 59, 58;,
3; 61, 59, 60;,
3; 64, 63, 62;,
3; 65, 63, 64;,
3; 68, 67, 66;,
3; 67, 69, 66;,
3; 72, 71, 70;,
3; 73, 71, 72;,
3; 76, 75, 74;,
3; 77, 75, 76;,
3; 80, 79, 78;,
3; 81, 79, 80;,
3; 84, 83, 82;,
3; 85, 83, 84;,
3; 88, 87, 86;,
3; 89, 87, 88;,
3; 92, 91, 90;,
3; 93, 91, 92;,
3; 96, 95, 94;,
3; 97, 95, 96;,
3; 100, 99, 98;,
3; 101, 99, 100;;

MeshMaterialList {
1;
52;
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0;
Material mat19 {
  0.687500; 0.687500; 0.687500; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "10D69B79_c.bmp";
  }
  DiffuseTextureFileName  {
     "10D69B79_c.bmp";
  }
  FS10Material {
    0.687500; 0.687500; 0.687500; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "10D69B79_c.bmp";
    }
  }
}
}

MeshNormals {
102;
-0.70711; 0.00000; -0.70711;,
-0.70711; 0.00000; -0.70711;,
-0.70711; 0.00000; -0.70711;,
-0.70711; 0.00000; -0.70711;,
-0.99986; 0.00000; 0.01697;,
-0.99986; 0.00000; 0.01697;,
-0.99986; 0.00000; 0.01697;,
-0.99986; 0.00000; 0.01697;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.43815; 0.00000; 0.89890;,
0.43815; 0.00000; 0.89890;,
0.43815; 0.00000; 0.89890;,
0.43815; 0.00000; 0.89890;,
0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
0.70789; 0.00000; 0.70633;,
0.70789; 0.00000; 0.70633;,
0.70789; 0.00000; 0.70633;,
0.70789; 0.00000; 0.70633;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
-0.38059; 0.00000; 0.92474;,
-0.38059; 0.00000; 0.92474;,
-0.38059; 0.00000; 0.92474;,
-0.38059; 0.00000; 0.92474;,
0.92363; 0.00000; 0.38328;,
0.92363; 0.00000; 0.38328;,
0.92363; 0.00000; 0.38328;,
0.92363; 0.00000; 0.38328;,
-0.92364; 0.00000; -0.38327;,
-0.92364; 0.00000; -0.38327;,
-0.92364; 0.00000; -0.38327;,
-0.92364; 0.00000; -0.38327;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;;

52;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 7, 5, 6;,
3; 10, 9, 8;,
3; 11, 9, 10;,
3; 14, 13, 12;,
3; 15, 13, 14;,
3; 18, 17, 16;,
3; 19, 17, 18;,
3; 22, 21, 20;,
3; 23, 21, 22;,
3; 26, 25, 24;,
3; 27, 25, 26;,
3; 30, 29, 28;,
3; 31, 29, 30;,
3; 34, 33, 32;,
3; 35, 33, 34;,
3; 38, 37, 36;,
3; 39, 37, 38;,
3; 42, 41, 40;,
3; 43, 41, 42;,
3; 46, 45, 44;,
3; 47, 45, 46;,
3; 50, 49, 48;,
3; 53, 52, 51;,
3; 55, 52, 54;,
3; 54, 52, 53;,
3; 57, 56, 50;,
3; 50, 56, 49;,
3; 60, 59, 58;,
3; 61, 59, 60;,
3; 64, 63, 62;,
3; 65, 63, 64;,
3; 68, 67, 66;,
3; 67, 69, 66;,
3; 72, 71, 70;,
3; 73, 71, 72;,
3; 76, 75, 74;,
3; 77, 75, 76;,
3; 80, 79, 78;,
3; 81, 79, 80;,
3; 84, 83, 82;,
3; 85, 83, 84;,
3; 88, 87, 86;,
3; 89, 87, 88;,
3; 92, 91, 90;,
3; 93, 91, 92;,
3; 96, 95, 94;,
3; 97, 95, 96;,
3; 100, 99, 98;,
3; 101, 99, 100;;
}
MeshTextureCoords {
102;
0.00000; 0.00000;,
1.00000; 0.00000;,
0.00000; 1.00000;,
1.00000; 1.00000;,
0.00000; 0.00000;,
4.00000; 0.00000;,
0.00000; 1.00000;,
4.00000; 1.00000;,
-1.00000; 0.00000;,
3.00000; 0.00000;,
-1.00000; 1.00000;,
3.00000; 1.00000;,
-3.00000; 0.00000;,
4.00000; 0.00000;,
-3.00000; 1.00000;,
4.00000; 1.00000;,
2.00000; 0.00000;,
2.00000; 1.00000;,
0.00000; 0.00000;,
0.00000; 1.00000;,
0.00000; 0.00000;,
3.98291; 0.00000;,
0.00000; 1.00000;,
3.98291; 1.00000;,
1.00000; 0.00000;,
1.00000; 1.00000;,
0.00000; 0.00000;,
0.00000; 1.00000;,
-1.00000; 0.00000;,
2.00000; 0.00000;,
-1.00000; 1.00000;,
2.00000; 1.00000;,
1.00000; 0.00000;,
3.00000; 0.00000;,
1.00000; 1.00000;,
3.00000; 1.00000;,
1.00000; 0.00000;,
1.00000; 1.00000;,
0.00000; 0.00000;,
0.00000; 1.00000;,
-2.00000; 0.00000;,
5.00000; 0.00000;,
-2.00000; 1.00000;,
5.00000; 1.00000;,
0.00000; 0.00000;,
2.00000; 0.00000;,
0.00000; 1.00000;,
2.00000; 1.00000;,
0.00000; 1.00000;,
0.00000; 0.00000;,
0.25000; 1.00000;,
1.00000; 1.00000;,
0.75000; 1.00000;,
1.00000; 0.00000;,
0.00000; 0.00000;,
0.00000; 1.00000;,
1.00000; 0.00000;,
1.00000; 1.00000;,
0.00000; 0.00000;,
2.00000; 0.00000;,
0.00000; 1.00000;,
2.00000; 1.00000;,
0.00000; 1.00000;,
0.00000; 0.00000;,
1.00000; 1.00000;,
1.00000; 0.00000;,
1.00000; 0.00000;,
0.00000; 1.00000;,
0.00000; 0.00000;,
1.00000; 1.00000;,
0.00000; 0.92676;,
0.00000; 0.00244;,
1.00000; 0.92676;,
1.00000; 0.00244;,
0.00000; 0.92676;,
0.00000; 0.00244;,
1.00000; 0.92676;,
1.00000; 0.00244;,
0.00000; 0.92676;,
0.00000; 0.00244;,
1.00000; 0.92676;,
1.00000; 0.00244;,
0.00000; 0.93604;,
0.00000; -0.06396;,
1.00000; 0.93604;,
1.00000; -0.06396;,
1.00000; -0.06396;,
1.00000; 0.93604;,
0.00000; -0.06396;,
0.00000; 0.93604;,
0.00000; 0.93604;,
0.00000; -0.06396;,
1.00000; 0.93604;,
1.00000; -0.06396;,
-1.00000; 1.00000;,
-1.00000; 0.00000;,
2.00000; 1.00000;,
2.00000; 0.00000;,
3.00000; 1.00000;,
-1.00000; 1.00000;,
3.00000; 0.00000;,
-1.00000; 0.00000;;
}

}

}

Frame frmpart20_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part20 {
12;
9.14000; 1.10500; -34.99500;,
9.14000; -0.89500; -34.99500;,
9.94000; 1.10500; -37.39500;,
9.94000; -0.89500; -37.39500;,
9.94000; 1.10500; -37.39500;,
9.94000; -0.89500; -37.39500;,
12.34000; 1.10500; -37.39500;,
12.34000; -0.89500; -37.39500;,
12.34000; 1.10500; -37.39500;,
12.34000; -0.89500; -37.39500;,
13.14000; 1.10500; -34.99500;,
13.14000; -0.89500; -34.99500;;

6;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 7, 5, 6;,
3; 10, 9, 8;,
3; 11, 9, 10;;

MeshMaterialList {
1;
6;
0,
0,
0,
0,
0,
0;
Material mat20 {
  0.687500; 0.687500; 0.687500; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "213F78BF_c.bmp";
  }
  DiffuseTextureFileName  {
     "213F78BF_c.bmp";
  }
  FS10Material {
    0.687500; 0.687500; 0.687500; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "213F78BF_c.bmp";
    }
  }
}
}

MeshNormals {
12;
0.94868; 0.00000; 0.31623;,
0.94868; 0.00000; 0.31623;,
0.94868; 0.00000; 0.31623;,
0.94868; 0.00000; 0.31623;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
-0.94868; 0.00000; 0.31623;,
-0.94868; 0.00000; 0.31623;,
-0.94868; 0.00000; 0.31623;,
-0.94868; 0.00000; 0.31623;;

6;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 7, 5, 6;,
3; 10, 9, 8;,
3; 11, 9, 10;;
}
MeshTextureCoords {
12;
0.00000; 1.00000;,
0.00000; 0.00000;,
0.20020; 1.00000;,
0.20020; 0.00000;,
0.20020; 1.00000;,
0.20020; 0.00000;,
0.79980; 1.00000;,
0.79980; 0.00000;,
0.79980; 1.00000;,
0.79980; 0.00000;,
1.00000; 1.00000;,
1.00000; 0.00000;;
}

}

}

Frame frmpart21_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part21 {
4;
7.44000; 3.55000; -45.85001;,
7.44000; -0.85000; -45.85001;,
14.64000; 3.55000; -45.85001;,
14.64000; -0.85000; -45.85001;;

2;
3; 2, 1, 0;,
3; 3, 1, 2;;

MeshMaterialList {
1;
2;
0,
0;
Material mat21 {
  0.687500; 0.687500; 0.687500; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "4F9F4337_c.bmp";
  }
  DiffuseTextureFileName  {
     "4F9F4337_c.bmp";
  }
  FS10Material {
    0.687500; 0.687500; 0.687500; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "4F9F4337_c.bmp";
    }
  }
}
}

MeshNormals {
4;
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;;

2;
3; 2, 1, 0;,
3; 3, 1, 2;;
}
MeshTextureCoords {
4;
0.00000; 1.00000;,
0.00000; 0.00000;,
1.00000; 1.00000;,
1.00000; 0.00000;;
}

}

}

Frame frmpart22_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part22 {
12;
12.26500; -0.26500; -33.31500;,
12.26500; -0.53000; -33.31500;,
12.41500; -0.26500; -33.31500;,
12.41500; -0.53000; -33.31500;,
13.06500; -0.26500; -33.31500;,
13.06500; -0.53000; -33.31500;,
13.21500; -0.26500; -33.31500;,
13.21500; -0.53000; -33.31500;,
13.86500; -0.26500; -33.31500;,
13.86500; -0.53000; -33.31500;,
14.01500; -0.26500; -33.31500;,
14.01500; -0.53000; -33.31500;;

6;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 7, 5, 6;,
3; 10, 9, 8;,
3; 11, 9, 10;;

MeshMaterialList {
1;
6;
0,
0,
0,
0,
0,
0;
Material mat22 {
  0.687500; 0.687500; 0.687500; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "28DD4D2_c.bmp";
  }
  DiffuseTextureFileName  {
     "28DD4D2_c.bmp";
  }
  FS10Material {
    0.687500; 0.687500; 0.687500; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "28DD4D2_c.bmp";
    }
  }
}
}

MeshNormals {
12;
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;;

6;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 7, 5, 6;,
3; 10, 9, 8;,
3; 11, 9, 10;;
}
MeshTextureCoords {
12;
0.00000; 1.00000;,
0.00000; 0.00000;,
1.00000; 1.00000;,
1.00000; 0.00000;,
0.00000; 1.00000;,
0.00000; 0.00000;,
1.00000; 1.00000;,
1.00000; 0.00000;,
0.00000; 1.00000;,
0.00000; 0.00000;,
1.00000; 1.00000;,
1.00000; 0.00000;;
}

}

}

Frame frmpart23_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part23 {
24;
3.31000; -0.78000; -34.62000;,
6.56500; -0.78000; -31.37000;,
3.31000; -0.58000; -34.62000;,
6.56500; -0.58000; -31.37000;,
15.02500; -0.78000; -31.34500;,
15.02500; -0.58000; -31.34500;,
13.80500; -0.78000; -31.34500;,
13.80500; -0.58000; -31.34500;,
15.02500; -0.78000; -31.34500;,
15.88500; -0.78000; -32.21000;,
15.02500; -0.58000; -31.34500;,
15.88500; -0.58000; -32.21000;,
-3.57000; -3.28000; 31.21000;,
-7.34000; -3.28000; 29.03500;,
-3.57000; -3.08000; 31.21000;,
-7.34000; -3.08000; 29.03500;,
-13.39500; -4.28000; 33.75000;,
-12.39500; -4.28000; 32.02000;,
-13.39500; -4.08000; 33.75000;,
-12.39500; -4.08000; 32.02000;,
-14.38500; -4.28000; 30.87000;,
-15.38500; -4.28000; 32.60000;,
-14.38500; -4.08000; 30.87000;,
-15.38500; -4.08000; 32.60000;;

12;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 7, 5, 6;,
3; 10, 9, 8;,
3; 11, 9, 10;,
3; 14, 13, 12;,
3; 15, 13, 14;,
3; 18, 17, 16;,
3; 19, 17, 18;,
3; 22, 21, 20;,
3; 23, 21, 22;;

MeshMaterialList {
1;
12;
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0;
Material mat23 {
  0.687500; 0.687500; 0.687500; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "6EC1628E_c.bmp";
  }
  DiffuseTextureFileName  {
     "6EC1628E_c.bmp";
  }
  FS10Material {
    0.687500; 0.687500; 0.687500; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "6EC1628E_c.bmp";
    }
  }
}
}

MeshNormals {
24;
-0.70656; 0.00000; 0.70765;,
-0.70656; 0.00000; 0.70765;,
-0.70656; 0.00000; 0.70765;,
-0.70656; 0.00000; 0.70765;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.70915; 0.00000; 0.70505;,
0.70915; 0.00000; 0.70505;,
0.70915; 0.00000; 0.70505;,
0.70915; 0.00000; 0.70505;,
0.49972; 0.00000; -0.86619;,
0.49972; 0.00000; -0.86619;,
0.49972; 0.00000; -0.86619;,
0.49972; 0.00000; -0.86619;,
0.86577; 0.00000; 0.50044;,
0.86577; 0.00000; 0.50044;,
0.86577; 0.00000; 0.50044;,
0.86577; 0.00000; 0.50044;,
-0.86577; 0.00000; -0.50045;,
-0.86577; 0.00000; -0.50045;,
-0.86577; 0.00000; -0.50045;,
-0.86577; 0.00000; -0.50045;;

12;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 7, 5, 6;,
3; 10, 9, 8;,
3; 11, 9, 10;,
3; 14, 13, 12;,
3; 15, 13, 14;,
3; 18, 17, 16;,
3; 19, 17, 18;,
3; 22, 21, 20;,
3; 23, 21, 22;;
}
MeshTextureCoords {
24;
-11.00000; 0.00000;,
12.00000; 0.00000;,
-11.00000; 1.00000;,
12.00000; 1.00000;,
3.00000; 0.00000;,
3.00000; 1.00000;,
-3.00000; 0.00000;,
-3.00000; 1.00000;,
-2.00000; 0.00000;,
4.00000; 0.00000;,
-2.00000; 1.00000;,
4.00000; 1.00000;,
-10.00000; 0.00000;,
11.00000; 0.00000;,
-10.00000; 1.00000;,
11.00000; 1.00000;,
-5.00000; 0.00000;,
5.00000; 0.00000;,
-5.00000; 1.00000;,
5.00000; 1.00000;,
5.00000; 0.00000;,
-5.00000; 0.00000;,
5.00000; 1.00000;,
-5.00000; 1.00000;;
}

}

}

Frame frmpart24_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part24 {
12;
9.86000; -0.08000; -33.39500;,
9.74000; -0.08000; -33.24500;,
9.74000; -0.23000; -33.39500;,
9.74000; -0.08000; -33.24500;,
9.62000; -0.08000; -33.39500;,
9.74000; -0.23000; -33.39500;,
12.34000; -0.08000; -33.24500;,
12.22000; -0.08000; -33.39500;,
12.34000; -0.23000; -33.39500;,
12.46000; -0.08000; -33.39500;,
12.34000; -0.08000; -33.24500;,
12.34000; -0.23000; -33.39500;;

4;
3; 2, 1, 0;,
3; 5, 4, 3;,
3; 8, 7, 6;,
3; 11, 10, 9;;

MeshMaterialList {
1;
4;
0,
0,
0,
0;
Material mat24 {
  0.687500; 0.687500; 0.687500; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "2D5D1B8F_c.bmp";
  }
  DiffuseTextureFileName  {
     "2D5D1B8F_c.bmp";
  }
  FS10Material {
    0.687500; 0.687500; 0.687500; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "2D5D1B8F_c.bmp";
    }
  }
}
}

MeshNormals {
12;
0.66227; -0.52981; 0.52981;,
0.66227; -0.52981; 0.52981;,
0.66227; -0.52981; 0.52981;,
-0.66227; -0.52981; 0.52981;,
-0.66227; -0.52981; 0.52981;,
-0.66227; -0.52981; 0.52981;,
-0.66227; -0.52981; 0.52981;,
-0.66227; -0.52981; 0.52981;,
-0.66227; -0.52981; 0.52981;,
0.66227; -0.52981; 0.52981;,
0.66227; -0.52981; 0.52981;,
0.66227; -0.52981; 0.52981;;

4;
3; 2, 1, 0;,
3; 5, 4, 3;,
3; 8, 7, 6;,
3; 11, 10, 9;;
}
MeshTextureCoords {
12;
0.00000; 1.00000;,
1.00000; 1.00000;,
0.00000; 0.00000;,
1.00000; 1.00000;,
0.00000; 1.00000;,
0.00000; 0.00000;,
1.00000; 1.00000;,
0.00000; 1.00000;,
0.00000; 0.00000;,
0.00000; 1.00000;,
1.00000; 1.00000;,
0.00000; 0.00000;;
}

}

}

Frame frmpart25_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part25 {
20;
11.94000; -0.58000; -30.59500;,
12.14000; -0.58000; -30.59500;,
11.94000; -0.58000; -31.39500;,
12.14000; -0.58000; -31.39500;,
9.94000; -0.58000; -30.59500;,
10.14000; -0.58000; -30.59500;,
9.94000; -0.58000; -31.39500;,
10.14000; -0.58000; -31.39500;,
18.40000; 1.42000; -7.04500;,
18.40000; 1.40000; -15.14500;,
18.20000; 1.40500; -7.16000;,
18.20000; 1.40500; -7.16000;,
18.40000; 1.40000; -15.14500;,
18.20000; 1.40000; -15.14500;,
10.94000; -0.08000; -2.97000;,
11.04000; -0.08000; -2.79500;,
18.20000; 1.40500; -7.16000;,
18.20000; 1.40500; -7.16000;,
11.04000; -0.08000; -2.79500;,
18.40000; 1.42000; -7.04500;;

8;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 7, 5, 6;,
3; 10, 9, 8;,
3; 13, 12, 11;,
3; 16, 15, 14;,
3; 19, 18, 17;;

MeshMaterialList {
1;
8;
0,
0,
0,
0,
0,
0,
0,
0;
Material mat25 {
  0.687500; 0.687500; 0.687500; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "1EEE750F_c.bmp";
  }
  DiffuseTextureFileName  {
     "1EEE750F_c.bmp";
  }
  FS10Material {
    0.687500; 0.687500; 0.687500; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "1EEE750F_c.bmp";
    }
  }
}
}

MeshNormals {
20;
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
-0.07338; 0.99730; -0.00246;,
-0.07338; 0.99730; -0.00246;,
-0.07338; 0.99730; -0.00246;,
0.00000; 1.00000; -0.00063;,
0.00000; 1.00000; -0.00063;,
0.00000; 1.00000; -0.00063;,
-0.15146; 0.98467; 0.08655;,
-0.15146; 0.98467; 0.08655;,
-0.15146; 0.98467; 0.08655;,
-0.13710; 0.98443; 0.11003;,
-0.13710; 0.98443; 0.11003;,
-0.13710; 0.98443; 0.11003;;

8;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 7, 5, 6;,
3; 10, 9, 8;,
3; 13, 12, 11;,
3; 16, 15, 14;,
3; 19, 18, 17;;
}
MeshTextureCoords {
20;
1.00000; 0.00000;,
1.00000; 1.00000;,
0.00000; 0.00000;,
0.00000; 1.00000;,
1.00000; 0.00000;,
1.00000; 1.00000;,
0.00000; 0.00000;,
0.00000; 1.00000;,
-5.00000; 0.00000;,
5.50000; 0.00000;,
-4.85547; 1.00000;,
-4.85547; 1.00000;,
5.50000; 0.00000;,
5.50000; 1.00000;,
6.00000; 1.00000;,
6.00000; 0.00000;,
-4.35547; 1.00000;,
-4.35547; 1.00000;,
6.00000; 0.00000;,
-4.50000; 0.00000;;
}

}

}

Frame frmpart26_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part26 {
56;
9.94000; -0.78000; -31.39500;,
9.94000; -0.78000; -30.59500;,
9.94000; -0.58000; -31.39500;,
9.94000; -0.58000; -30.59500;,
10.14000; -0.78000; -31.39500;,
9.94000; -0.78000; -31.39500;,
10.14000; -0.58000; -31.39500;,
9.94000; -0.58000; -31.39500;,
11.94000; -0.78000; -30.59500;,
12.14000; -0.78000; -30.59500;,
11.94000; -0.58000; -30.59500;,
12.14000; -0.58000; -30.59500;,
11.94000; -0.78000; -31.39500;,
11.94000; -0.78000; -30.59500;,
11.94000; -0.58000; -31.39500;,
11.94000; -0.58000; -30.59500;,
12.14000; -0.78000; -31.39500;,
11.94000; -0.78000; -31.39500;,
12.14000; -0.58000; -31.39500;,
11.94000; -0.58000; -31.39500;,
12.14000; -0.78000; -30.59500;,
12.14000; -0.78000; -31.39500;,
12.14000; -0.58000; -30.59500;,
12.14000; -0.58000; -31.39500;,
9.94000; -0.78000; -30.59500;,
10.14000; -0.78000; -30.59500;,
9.94000; -0.58000; -30.59500;,
10.14000; -0.58000; -30.59500;,
10.14000; -0.78000; -30.59500;,
10.14000; -0.78000; -31.39500;,
10.14000; -0.58000; -30.59500;,
10.14000; -0.58000; -31.39500;,
18.20000; 1.40000; -15.14500;,
18.20000; 1.20000; -15.14500;,
18.20000; 1.40500; -7.16000;,
18.20000; 1.20500; -7.16000;,
18.20000; 1.40000; -15.14500;,
18.40000; 1.40000; -15.14500;,
18.20000; 1.20000; -15.14500;,
18.40000; 1.22000; -15.14500;,
10.94000; -0.28000; -2.97000;,
11.04000; -0.28000; -2.79500;,
10.94000; -0.08000; -2.97000;,
11.04000; -0.08000; -2.79500;,
10.94000; -0.28000; -2.97000;,
10.94000; -0.08000; -2.97000;,
18.20000; 1.20500; -7.16000;,
18.20000; 1.40500; -7.16000;,
18.40000; 1.22000; -7.04500;,
18.40000; 1.22000; -15.14500;,
18.40000; 1.42000; -7.04500;,
18.40000; 1.40000; -15.14500;,
11.04000; -0.28000; -2.79500;,
18.40000; 1.22000; -7.04500;,
11.04000; -0.08000; -2.79500;,
18.40000; 1.42000; -7.04500;;

28;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 7, 5, 6;,
3; 10, 9, 8;,
3; 11, 9, 10;,
3; 14, 13, 12;,
3; 15, 13, 14;,
3; 18, 17, 16;,
3; 19, 17, 18;,
3; 22, 21, 20;,
3; 23, 21, 22;,
3; 26, 25, 24;,
3; 27, 25, 26;,
3; 30, 29, 28;,
3; 31, 29, 30;,
3; 34, 33, 32;,
3; 35, 33, 34;,
3; 38, 37, 36;,
3; 39, 37, 38;,
3; 42, 41, 40;,
3; 43, 41, 42;,
3; 46, 45, 44;,
3; 47, 45, 46;,
3; 50, 49, 48;,
3; 51, 49, 50;,
3; 54, 53, 52;,
3; 55, 53, 54;;

MeshMaterialList {
1;
28;
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0;
Material mat26 {
  0.687500; 0.687500; 0.687500; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "245C40BD_c.bmp";
  }
  DiffuseTextureFileName  {
     "245C40BD_c.bmp";
  }
  FS10Material {
    0.687500; 0.687500; 0.687500; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "245C40BD_c.bmp";
    }
  }
}
}

MeshNormals {
56;
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
-0.86824; 0.00000; 0.49614;,
-0.86824; 0.00000; 0.49614;,
-0.86824; 0.00000; 0.49614;,
-0.86824; 0.00000; 0.49614;,
-0.49986; 0.00000; -0.86611;,
-0.49986; 0.00000; -0.86611;,
-0.49986; 0.00000; -0.86611;,
-0.49986; 0.00000; -0.86611;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
0.50006; 0.00000; 0.86599;,
0.50006; 0.00000; 0.86599;,
0.50006; 0.00000; 0.86599;,
0.50006; 0.00000; 0.86599;;

28;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 7, 5, 6;,
3; 10, 9, 8;,
3; 11, 9, 10;,
3; 14, 13, 12;,
3; 15, 13, 14;,
3; 18, 17, 16;,
3; 19, 17, 18;,
3; 22, 21, 20;,
3; 23, 21, 22;,
3; 26, 25, 24;,
3; 27, 25, 26;,
3; 30, 29, 28;,
3; 31, 29, 30;,
3; 34, 33, 32;,
3; 35, 33, 34;,
3; 38, 37, 36;,
3; 39, 37, 38;,
3; 42, 41, 40;,
3; 43, 41, 42;,
3; 46, 45, 44;,
3; 47, 45, 46;,
3; 50, 49, 48;,
3; 51, 49, 50;,
3; 54, 53, 52;,
3; 55, 53, 54;;
}
MeshTextureCoords {
56;
0.00000; 0.00000;,
1.00000; 0.00000;,
0.00000; 1.00000;,
1.00000; 1.00000;,
0.25000; 0.00000;,
0.50000; 0.00000;,
0.25000; 1.00000;,
0.50000; 1.00000;,
0.00000; 0.00000;,
0.25000; 0.00000;,
0.00000; 1.00000;,
0.25000; 1.00000;,
0.00000; 0.00000;,
1.00000; 0.00000;,
0.00000; 1.00000;,
1.00000; 1.00000;,
0.25000; 0.00000;,
0.50000; 0.00000;,
0.25000; 1.00000;,
0.50000; 1.00000;,
0.25000; 0.00000;,
1.25000; 0.00000;,
0.25000; 1.00000;,
1.25000; 1.00000;,
0.00000; 0.00000;,
0.25000; 0.00000;,
0.00000; 1.00000;,
0.25000; 1.00000;,
0.25000; 0.00000;,
1.25000; 0.00000;,
0.25000; 1.00000;,
1.25000; 1.00000;,
-4.75000; 1.00000;,
-4.75000; 0.00000;,
6.00000; 1.00000;,
6.00000; 0.00000;,
-4.75000; 1.00000;,
-5.00000; 1.00000;,
-4.75000; 0.00000;,
-5.00000; 0.00000;,
5.75000; 0.00000;,
6.00000; 0.00000;,
5.75000; 1.00000;,
6.00000; 1.00000;,
5.75000; 0.00000;,
5.75000; 1.00000;,
-5.00000; 0.00000;,
-5.00000; 1.00000;,
-5.00000; 0.00000;,
5.50000; 0.00000;,
-5.00000; 1.00000;,
5.50000; 1.00000;,
-5.00000; 0.00000;,
5.50000; 0.00000;,
-5.00000; 1.00000;,
5.50000; 1.00000;;
}

}

}

Frame frmpart27_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part27 {
52;
-13.91500; -1.73000; 2.69500;,
-18.35000; -2.28000; 5.73000;,
-13.91500; -1.53000; 2.69500;,
-18.35000; -2.08000; 5.73000;,
-6.15500; -0.21500; 3.79500;,
-11.04500; -1.28000; 9.95500;,
-6.15500; -0.01000; 3.79500;,
-11.04500; -1.07000; 9.95500;,
-18.35000; -2.28000; 5.73000;,
-17.28500; -1.69000; 13.57500;,
-18.35000; -2.08000; 5.73000;,
-17.28500; -1.48000; 13.57500;,
-15.05000; -1.70000; 19.35000;,
-14.34500; -1.73500; 18.26500;,
-15.05000; -1.49000; 19.35000;,
-14.34500; -1.52500; 18.26500;,
-15.58500; -1.70000; 19.17500;,
-15.05000; -1.70000; 19.35000;,
-15.58500; -1.49000; 19.17500;,
-15.05000; -1.49000; 19.35000;,
-17.28500; -1.69000; 13.57500;,
-15.58500; -1.70000; 19.17500;,
-17.28500; -1.48000; 13.57500;,
-15.58500; -1.49000; 19.17500;,
-14.34500; -1.73500; 18.26500;,
-11.04000; -2.29000; 18.40500;,
-14.34500; -1.52500; 18.26500;,
-11.04000; -2.08000; 18.40500;,
29.55500; 0.00000; -29.28500;,
28.91000; 0.00500; -28.99500;,
28.91000; 0.16000; -28.99500;,
29.55500; 0.16000; -29.28500;,
31.08500; -0.19000; -26.32000;,
29.55500; 0.00000; -29.28500;,
29.55500; 0.16000; -29.28500;,
31.08500; -0.04000; -26.32000;,
28.91000; 0.00500; -28.99500;,
29.26500; -0.09500; -27.55500;,
29.26500; 0.06000; -27.55500;,
28.91000; 0.16000; -28.99500;,
29.26500; -0.09500; -27.55500;,
28.86000; -0.09500; -27.12500;,
28.86000; 0.06000; -27.12500;,
29.26500; 0.06000; -27.55500;,
28.86000; -0.09500; -27.12500;,
25.74500; -1.08000; -28.24500;,
25.74500; -0.93000; -28.24500;,
28.86000; 0.06000; -27.12500;,
32.87500; -1.08000; -24.51000;,
31.08500; -0.19000; -26.32000;,
31.08500; -0.04000; -26.32000;,
32.87500; -0.93000; -24.51000;;

26;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 7, 5, 6;,
3; 10, 9, 8;,
3; 11, 9, 10;,
3; 14, 13, 12;,
3; 15, 13, 14;,
3; 18, 17, 16;,
3; 19, 17, 18;,
3; 22, 21, 20;,
3; 23, 21, 22;,
3; 26, 25, 24;,
3; 27, 25, 26;,
3; 30, 29, 28;,
3; 31, 30, 28;,
3; 34, 33, 32;,
3; 35, 34, 32;,
3; 38, 37, 36;,
3; 39, 38, 36;,
3; 42, 41, 40;,
3; 43, 42, 40;,
3; 46, 45, 44;,
3; 47, 46, 44;,
3; 50, 49, 48;,
3; 51, 50, 48;;

MeshMaterialList {
1;
26;
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0;
Material mat27 {
  0.687500; 0.687500; 0.687500; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "6E951A98_c.bmp";
  }
  DiffuseTextureFileName  {
     "6E951A98_c.bmp";
  }
  FS10Material {
    0.687500; 0.687500; 0.687500; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "6E951A98_c.bmp";
    }
  }
}
}

MeshNormals {
52;
-0.56475; 0.00000; -0.82526;,
-0.56475; 0.00000; -0.82526;,
-0.56475; 0.00000; -0.82526;,
-0.56475; 0.00000; -0.82526;,
-0.78322; 0.00000; -0.62174;,
-0.78322; 0.00000; -0.62174;,
-0.78322; 0.00000; -0.62174;,
-0.78322; 0.00000; -0.62174;,
-0.99091; 0.00000; 0.13452;,
-0.99091; 0.00000; 0.13452;,
-0.99091; 0.00000; 0.13452;,
-0.99091; 0.00000; 0.13452;,
0.83853; 0.00000; 0.54485;,
0.83853; 0.00000; 0.54485;,
0.83853; 0.00000; 0.54485;,
0.83853; 0.00000; 0.54485;,
-0.31089; 0.00000; 0.95045;,
-0.31089; 0.00000; 0.95045;,
-0.31089; 0.00000; 0.95045;,
-0.31089; 0.00000; 0.95045;,
-0.95688; 0.00000; 0.29048;,
-0.95688; 0.00000; 0.29048;,
-0.95688; 0.00000; 0.29048;,
-0.95688; 0.00000; 0.29048;,
-0.04232; 0.00000; 0.99910;,
-0.04232; 0.00000; 0.99910;,
-0.04232; 0.00000; 0.99910;,
-0.04232; 0.00000; 0.99910;,
-0.41007; 0.00000; -0.91205;,
-0.41007; 0.00000; -0.91205;,
-0.41007; 0.00000; -0.91205;,
-0.41007; 0.00000; -0.91205;,
0.88866; 0.00000; -0.45857;,
0.88866; 0.00000; -0.45857;,
0.88866; 0.00000; -0.45857;,
0.88866; 0.00000; -0.45857;,
-0.97093; 0.00000; 0.23936;,
-0.97093; 0.00000; 0.23936;,
-0.97093; 0.00000; 0.23936;,
-0.97093; 0.00000; 0.23936;,
-0.72795; 0.00000; -0.68563;,
-0.72795; 0.00000; -0.68563;,
-0.72795; 0.00000; -0.68563;,
-0.72795; 0.00000; -0.68563;,
0.33834; 0.00000; -0.94102;,
0.33834; 0.00000; -0.94102;,
0.33834; 0.00000; -0.94102;,
0.33834; 0.00000; -0.94102;,
0.71102; 0.00000; -0.70317;,
0.71102; 0.00000; -0.70317;,
0.71102; 0.00000; -0.70317;,
0.71102; 0.00000; -0.70317;;

26;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 7, 5, 6;,
3; 10, 9, 8;,
3; 11, 9, 10;,
3; 14, 13, 12;,
3; 15, 13, 14;,
3; 18, 17, 16;,
3; 19, 17, 18;,
3; 22, 21, 20;,
3; 23, 21, 22;,
3; 26, 25, 24;,
3; 27, 25, 26;,
3; 30, 29, 28;,
3; 31, 30, 28;,
3; 34, 33, 32;,
3; 35, 34, 32;,
3; 38, 37, 36;,
3; 39, 38, 36;,
3; 42, 41, 40;,
3; 43, 42, 40;,
3; 46, 45, 44;,
3; 47, 46, 44;,
3; 50, 49, 48;,
3; 51, 50, 48;;
}
MeshTextureCoords {
52;
13.00000; 0.00000;,
-14.00000; 0.00000;,
13.00000; 1.00000;,
-14.00000; 1.00000;,
-23.00000; 0.00000;,
19.00000; 0.00000;,
-23.00000; 1.00000;,
19.00000; 1.00000;,
20.00000; 0.00000;,
-18.00000; 0.00000;,
20.00000; 1.00000;,
-18.00000; 1.00000;,
1.00000; 0.00000;,
-5.74219; 0.00000;,
1.00000; 1.00000;,
-5.74219; 1.00000;,
3.00000; 0.00000;,
0.00000; 0.00000;,
3.00000; 1.00000;,
0.00000; 1.00000;,
26.28613; 0.00000;,
0.00000; 0.00000;,
26.28613; 1.00000;,
0.00000; 1.00000;,
8.00000; 0.00000;,
-8.00000; 0.00000;,
8.00000; 1.00000;,
-8.00000; 1.00000;,
4.00000; 0.00000;,
0.00000; 0.00000;,
0.00000; 1.00000;,
4.00000; 1.00000;,
22.56348; 0.00000;,
0.00000; 0.00000;,
0.00000; 1.00000;,
22.56348; 1.00000;,
1.00000; 0.00000;,
-9.27539; 0.00000;,
-9.27539; 1.00000;,
1.00000; 1.00000;,
0.72949; 0.00000;,
-3.00000; 0.00000;,
-3.00000; 1.00000;,
0.72949; 1.00000;,
1.00000; 0.00000;,
-21.00586; 0.00000;,
-21.00586; 1.00000;,
1.00000; 1.00000;,
16.99121; 0.00000;,
0.55859; 0.00000;,
0.55859; 1.00000;,
16.99121; 1.00000;;
}

}

}

Frame frmpart28_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part28 {
76;
-14.04500; -0.55000; -4.22500;,
-11.04500; -0.55000; -4.22500;,
-14.04500; -1.67500; -4.22500;,
-11.04500; -0.72500; -4.22500;,
-11.04500; -0.55000; -4.02500;,
-14.04500; -0.55000; -4.02500;,
-11.04500; -0.75500; -4.02500;,
-14.04500; -1.71000; -4.02500;,
-14.04500; -0.55000; -4.22500;,
-14.04500; -1.67500; -4.22500;,
-14.04500; -0.55000; -4.02500;,
-14.04500; -1.71000; -4.02500;,
-14.36500; -3.28000; 30.53500;,
-14.10500; -3.28000; 30.68500;,
-14.36500; -4.28000; 30.53500;,
-14.10500; -4.28000; 30.68500;,
-14.51500; -3.28000; 30.79500;,
-14.36500; -3.28000; 30.53500;,
-14.51500; -4.28000; 30.79500;,
-14.36500; -4.28000; 30.53500;,
-14.25500; -3.28000; 30.94500;,
-14.51500; -3.28000; 30.79500;,
-14.25500; -4.28000; 30.94500;,
-14.51500; -4.28000; 30.79500;,
-14.10500; -3.28000; 30.68500;,
-14.25500; -3.28000; 30.94500;,
-14.10500; -4.28000; 30.68500;,
-14.25500; -4.28000; 30.94500;,
-16.70500; -2.38000; 32.18500;,
-15.66500; -2.38000; 32.78500;,
-16.70500; -3.30500; 32.18500;,
-15.66500; -3.30500; 32.78500;,
-15.66500; -2.38000; 32.78500;,
-17.01500; -2.38000; 35.12500;,
-15.66500; -3.30500; 32.78500;,
-17.01500; -3.30500; 35.12500;,
-16.55500; -3.30500; 31.92500;,
-15.25500; -3.30500; 32.67500;,
-16.55500; -4.28000; 31.92500;,
-15.25500; -4.28000; 32.67500;,
-16.70500; -3.30500; 32.18500;,
-16.55500; -3.30500; 31.92500;,
-16.70500; -4.28000; 32.18500;,
-16.55500; -4.28000; 31.92500;,
-15.25500; -3.30500; 32.67500;,
-16.75500; -3.30500; 35.27500;,
-15.25500; -4.28000; 32.67500;,
-16.75500; -4.28000; 35.27500;,
-16.75500; -3.30500; 35.27500;,
-17.01500; -3.30500; 35.12500;,
-16.75500; -4.28000; 35.27500;,
-17.01500; -4.28000; 35.12500;,
-13.52500; -3.28000; 33.67500;,
-13.26500; -3.28000; 33.82500;,
-13.52500; -4.28000; 33.67500;,
-13.26500; -4.28000; 33.82500;,
-15.02500; -3.28000; 36.27500;,
-13.52500; -3.28000; 33.67500;,
-15.02500; -4.28000; 36.27500;,
-13.52500; -4.28000; 33.67500;,
-12.11500; -3.28000; 31.83500;,
-12.26500; -3.28000; 32.09500;,
-12.11500; -4.28000; 31.83500;,
-12.26500; -4.28000; 32.09500;,
-12.26500; -3.28000; 32.09500;,
-12.52500; -3.28000; 31.94500;,
-12.26500; -4.28000; 32.09500;,
-12.52500; -4.28000; 31.94500;,
-12.52500; -3.28000; 31.94500;,
-12.37500; -3.28000; 31.68500;,
-12.52500; -4.28000; 31.94500;,
-12.37500; -4.28000; 31.68500;,
-12.37500; -3.28000; 31.68500;,
-12.11500; -3.28000; 31.83500;,
-12.37500; -4.28000; 31.68500;,
-12.11500; -4.28000; 31.83500;;

38;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 7, 5, 6;,
3; 10, 9, 8;,
3; 11, 9, 10;,
3; 14, 13, 12;,
3; 15, 13, 14;,
3; 18, 17, 16;,
3; 19, 17, 18;,
3; 22, 21, 20;,
3; 23, 21, 22;,
3; 26, 25, 24;,
3; 27, 25, 26;,
3; 30, 29, 28;,
3; 31, 29, 30;,
3; 34, 33, 32;,
3; 35, 33, 34;,
3; 38, 37, 36;,
3; 39, 37, 38;,
3; 42, 41, 40;,
3; 43, 41, 42;,
3; 46, 45, 44;,
3; 47, 45, 46;,
3; 50, 49, 48;,
3; 51, 49, 50;,
3; 54, 53, 52;,
3; 55, 53, 54;,
3; 58, 57, 56;,
3; 59, 57, 58;,
3; 62, 61, 60;,
3; 63, 61, 62;,
3; 66, 65, 64;,
3; 67, 65, 66;,
3; 70, 69, 68;,
3; 71, 69, 70;,
3; 74, 73, 72;,
3; 75, 73, 74;;

MeshMaterialList {
1;
38;
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0;
Material mat28 {
  0.687500; 0.687500; 0.687500; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "2DAF96AE_c.bmp";
  }
  DiffuseTextureFileName  {
     "2DAF96AE_c.bmp";
  }
  FS10Material {
    0.687500; 0.687500; 0.687500; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "2DAF96AE_c.bmp";
    }
  }
}
}

MeshNormals {
76;
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
0.49972; 0.00000; -0.86619;,
0.49972; 0.00000; -0.86619;,
0.49972; 0.00000; -0.86619;,
0.49972; 0.00000; -0.86619;,
-0.86619; 0.00000; -0.49972;,
-0.86619; 0.00000; -0.49972;,
-0.86619; 0.00000; -0.49972;,
-0.86619; 0.00000; -0.49972;,
-0.49972; 0.00000; 0.86619;,
-0.49972; 0.00000; 0.86619;,
-0.49972; 0.00000; 0.86619;,
-0.49972; 0.00000; 0.86619;,
0.86619; 0.00000; 0.49972;,
0.86619; 0.00000; 0.49972;,
0.86619; 0.00000; 0.49972;,
0.86619; 0.00000; 0.49972;,
0.49972; 0.00000; -0.86619;,
0.49972; 0.00000; -0.86619;,
0.49972; 0.00000; -0.86619;,
0.49972; 0.00000; -0.86619;,
0.86619; 0.00000; 0.49972;,
0.86619; 0.00000; 0.49972;,
0.86619; 0.00000; 0.49972;,
0.86619; 0.00000; 0.49972;,
0.49973; 0.00000; -0.86618;,
0.49973; 0.00000; -0.86618;,
0.49973; 0.00000; -0.86618;,
0.49973; 0.00000; -0.86618;,
-0.86618; 0.00000; -0.49973;,
-0.86618; 0.00000; -0.49973;,
-0.86618; 0.00000; -0.49973;,
-0.86618; 0.00000; -0.49973;,
0.86619; 0.00000; 0.49972;,
0.86619; 0.00000; 0.49972;,
0.86619; 0.00000; 0.49972;,
0.86619; 0.00000; 0.49972;,
-0.49972; 0.00000; 0.86619;,
-0.49972; 0.00000; 0.86619;,
-0.49972; 0.00000; 0.86619;,
-0.49972; 0.00000; 0.86619;,
0.49973; 0.00000; -0.86618;,
0.49973; 0.00000; -0.86618;,
0.49973; 0.00000; -0.86618;,
0.49973; 0.00000; -0.86618;,
-0.86619; 0.00000; -0.49972;,
-0.86619; 0.00000; -0.49972;,
-0.86619; 0.00000; -0.49972;,
-0.86619; 0.00000; -0.49972;,
0.86619; 0.00000; 0.49972;,
0.86619; 0.00000; 0.49972;,
0.86619; 0.00000; 0.49972;,
0.86619; 0.00000; 0.49972;,
-0.49972; 0.00000; 0.86619;,
-0.49972; 0.00000; 0.86619;,
-0.49972; 0.00000; 0.86619;,
-0.49972; 0.00000; 0.86619;,
-0.86619; 0.00000; -0.49972;,
-0.86619; 0.00000; -0.49972;,
-0.86619; 0.00000; -0.49972;,
-0.86619; 0.00000; -0.49972;,
0.49972; 0.00000; -0.86619;,
0.49972; 0.00000; -0.86619;,
0.49972; 0.00000; -0.86619;,
0.49972; 0.00000; -0.86619;;

38;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 7, 5, 6;,
3; 10, 9, 8;,
3; 11, 9, 10;,
3; 14, 13, 12;,
3; 15, 13, 14;,
3; 18, 17, 16;,
3; 19, 17, 18;,
3; 22, 21, 20;,
3; 23, 21, 22;,
3; 26, 25, 24;,
3; 27, 25, 26;,
3; 30, 29, 28;,
3; 31, 29, 30;,
3; 34, 33, 32;,
3; 35, 33, 34;,
3; 38, 37, 36;,
3; 39, 37, 38;,
3; 42, 41, 40;,
3; 43, 41, 42;,
3; 46, 45, 44;,
3; 47, 45, 46;,
3; 50, 49, 48;,
3; 51, 49, 50;,
3; 54, 53, 52;,
3; 55, 53, 54;,
3; 58, 57, 56;,
3; 59, 57, 58;,
3; 62, 61, 60;,
3; 63, 61, 62;,
3; 66, 65, 64;,
3; 67, 65, 66;,
3; 70, 69, 68;,
3; 71, 69, 70;,
3; 74, 73, 72;,
3; 75, 73, 74;;
}
MeshTextureCoords {
76;
0.50000; 1.00000;,
-7.00000; 1.00000;,
0.50000; 0.06494;,
-7.00000; 0.85938;,
7.50000; 1.00000;,
0.00000; 1.00000;,
7.50000; 0.83350;,
0.00000; 0.03906;,
0.50000; 1.00000;,
0.50000; 0.06494;,
1.00000; 1.00000;,
1.00000; 0.03906;,
1.00000; 1.00000;,
0.00000; 1.00000;,
1.00000; 0.00000;,
0.00000; 0.00000;,
1.00000; 1.00000;,
0.00000; 1.00000;,
1.00000; 0.00000;,
0.00000; 0.00000;,
1.00000; 1.00000;,
0.00000; 1.00000;,
1.00000; 0.00000;,
0.00000; 0.00000;,
1.00000; 1.00000;,
0.00000; 1.00000;,
1.00000; 0.00000;,
0.00000; 0.00000;,
4.00000; 1.00000;,
0.00000; 1.00000;,
4.00000; 0.29980;,
0.00000; 0.29980;,
5.00000; 1.00000;,
-4.00000; 1.00000;,
5.00000; 0.29980;,
-4.00000; 0.29980;,
1.00000; 1.00000;,
-4.00000; 1.00000;,
1.00000; 0.00000;,
-4.00000; 0.00000;,
1.00000; 1.00000;,
0.00000; 1.00000;,
1.00000; 0.00000;,
0.00000; 0.00000;,
5.00000; 1.00000;,
-5.00000; 1.00000;,
5.00000; 0.00000;,
-5.00000; 0.00000;,
1.00000; 1.00000;,
0.00000; 1.00000;,
1.00000; 0.00000;,
0.00000; 0.00000;,
1.00000; 1.00000;,
0.00000; 1.00000;,
1.00000; 0.00000;,
0.00000; 0.00000;,
6.00000; 1.00000;,
-4.00000; 1.00000;,
6.00000; 0.00000;,
-4.00000; 0.00000;,
1.00000; 1.00000;,
0.00000; 1.00000;,
1.00000; 0.00000;,
0.00000; 0.00000;,
1.00000; 1.00000;,
0.00000; 1.00000;,
1.00000; 0.00000;,
0.00000; 0.00000;,
1.00000; 1.00000;,
0.00000; 1.00000;,
1.00000; 0.00000;,
0.00000; 0.00000;,
1.00000; 1.00000;,
0.00000; 1.00000;,
1.00000; 0.00000;,
0.00000; 0.00000;;
}

}

}

Frame frmpart29_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part29 {
4;
10.14000; 1.81000; -33.79501;,
10.14000; 1.21000; -33.79501;,
11.94000; 1.81000; -33.79501;,
11.94000; 1.21000; -33.79501;;

2;
3; 2, 1, 0;,
3; 3, 1, 2;;

MeshMaterialList {
1;
2;
0,
0;
Material mat29 {
  0.687500; 0.687500; 0.687500; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "76118EE5_c.bmp";
  }
  DiffuseTextureFileName  {
     "76118EE5_c.bmp";
  }
  FS10Material {
    0.687500; 0.687500; 0.687500; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "76118EE5_c.bmp";
    }
  }
}
}

MeshNormals {
4;
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;;

2;
3; 2, 1, 0;,
3; 3, 1, 2;;
}
MeshTextureCoords {
4;
0.00000; 1.00000;,
0.00000; 0.00000;,
2.00000; 1.00000;,
2.00000; 0.00000;;
}

}

}

Frame frmpart30_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part30 {
107;
2.64000; -1.00500; -35.08000;,
2.78000; -1.00500; -35.22500;,
2.35500; -0.78000; -34.80000;,
14.34000; -1.48000; -33.39500;,
16.60500; -1.48000; -35.66000;,
14.34000; -0.68000; -33.39500;,
16.60500; -0.68000; -35.66000;,
10.14000; -0.88000; -33.39500;,
11.94000; -0.88000; -33.39500;,
10.14000; -0.78000; -33.49500;,
11.94000; -0.78000; -33.49500;,
10.14000; -0.78000; -33.49500;,
10.14000; -0.78000; -34.99500;,
10.14000; -0.68000; -33.39500;,
10.14000; -0.68000; -34.99500;,
11.94000; -0.78000; -34.99500;,
11.94000; -0.68000; -33.39500;,
11.94000; -0.68000; -34.99500;,
10.14000; -0.88000; -33.39500;,
11.94000; -0.78000; -33.49500;,
11.94000; -0.88000; -33.39500;,
10.14000; -0.88000; -31.59500;,
10.14000; -1.48000; -31.59500;,
10.14000; -0.88000; -31.39500;,
10.14000; -1.48000; -31.39500;,
11.94000; -0.88000; -31.39500;,
11.94000; -1.48000; -31.39500;,
11.94000; -0.88000; -31.59500;,
11.94000; -1.48000; -31.59500;,
11.94000; -1.48000; -31.59500;,
10.14000; -1.48000; -31.59500;,
11.94000; -0.88000; -31.59500;,
10.14000; -0.88000; -31.59500;,
10.14000; -0.88000; -31.39500;,
11.94000; -0.88000; -31.39500;,
10.14000; -0.88000; -31.59500;,
11.94000; -0.88000; -31.59500;,
16.88500; -1.00500; -34.24500;,
17.37000; -1.48000; -33.76000;,
17.37000; -1.00500; -33.76000;,
17.17000; -0.90500; -34.52500;,
17.45000; -0.90500; -34.81000;,
17.17000; -1.00500; -34.52500;,
17.65000; -1.00500; -34.04500;,
17.17000; -0.90500; -34.52500;,
17.17000; -1.00500; -34.52500;,
16.88500; -1.48000; -34.24500;,
17.65000; -0.90500; -34.04500;,
3.34500; -1.48000; -35.79000;,
6.74000; -1.48000; -32.39500;,
3.34500; -0.68000; -35.79000;,
6.74000; -0.68000; -32.39500;,
7.74000; -1.48000; -33.39500;,
7.74000; -0.68000; -33.39500;,
6.74000; -1.48000; -32.39500;,
6.74000; -0.68000; -32.39500;,
1.08500; -0.68000; -33.52500;,
2.35500; -0.78000; -34.80000;,
3.34500; -0.68000; -35.79000;,
1.08500; -0.78000; -33.52500;,
2.35500; -0.78000; -34.80000;,
1.08500; -0.68000; -33.52500;,
2.78000; -1.00500; -35.22500;,
3.34500; -1.00500; -35.79000;,
2.35500; -0.78000; -34.80000;,
3.34500; -0.68000; -35.79000;,
17.17000; -1.00500; -34.52500;,
17.45000; -1.48000; -34.81000;,
16.88500; -1.00500; -34.24500;,
16.88500; -1.00500; -34.24500;,
17.45000; -1.48000; -34.81000;,
16.88500; -1.48000; -34.24500;,
17.45000; -1.48000; -34.81000;,
16.60500; -0.90500; -35.66000;,
16.60500; -1.48000; -35.66000;,
17.59500; -0.90500; -36.65000;,
17.59500; -1.48000; -36.65000;,
1.93000; -1.48000; -37.20500;,
3.34500; -1.48000; -35.79000;,
1.93000; -0.90500; -37.20500;,
3.34500; -1.00500; -35.79000;,
2.78000; -1.00500; -35.22500;,
2.78000; -1.48000; -35.22500;,
1.36500; -0.90500; -36.64000;,
1.36500; -1.48000; -36.64000;,
11.94000; -0.68000; -33.39500;,
11.94000; -0.88000; -33.39500;,
14.34000; -0.68000; -33.39500;,
14.34000; -1.48000; -33.39500;,
10.14000; -0.68000; -33.39500;,
7.74000; -0.68000; -33.39500;,
10.14000; -0.88000; -33.39500;,
7.74000; -1.48000; -33.39500;,
11.94000; -0.88000; -31.39500;,
10.14000; -0.88000; -31.39500;,
11.94000; -0.78000; -31.39500;,
10.14000; -0.78000; -31.39500;,
18.92500; -0.90500; -35.31500;,
17.59500; -0.90500; -36.65000;,
18.92500; -1.48000; -35.31500;,
17.59500; -1.48000; -36.65000;,
19.06500; -0.78000; -35.46000;,
17.93500; -0.78000; -34.32500;,
18.92500; -1.00500; -35.31500;,
18.92500; -1.00500; -35.31500;,
17.93500; -0.78000; -34.32500;,
18.07500; -1.00500; -34.47000;;

53;
3; 2, 1, 0;,
3; 5, 4, 3;,
3; 6, 4, 5;,
3; 9, 8, 7;,
3; 10, 8, 9;,
3; 13, 12, 11;,
3; 14, 12, 13;,
3; 17, 16, 15;,
3; 18, 13, 11;,
3; 16, 20, 19;,
3; 15, 16, 19;,
3; 23, 22, 21;,
3; 24, 22, 23;,
3; 27, 26, 25;,
3; 28, 26, 27;,
3; 31, 30, 29;,
3; 32, 30, 31;,
3; 35, 34, 33;,
3; 36, 34, 35;,
3; 39, 38, 37;,
3; 42, 41, 40;,
3; 45, 44, 43;,
3; 37, 38, 46;,
3; 43, 44, 47;,
3; 50, 49, 48;,
3; 51, 49, 50;,
3; 54, 53, 52;,
3; 55, 53, 54;,
3; 58, 57, 56;,
3; 61, 60, 59;,
3; 64, 63, 62;,
3; 65, 63, 64;,
3; 68, 67, 66;,
3; 71, 70, 69;,
3; 42, 72, 41;,
3; 75, 74, 73;,
3; 76, 74, 75;,
3; 79, 78, 77;,
3; 80, 78, 79;,
3; 83, 82, 81;,
3; 84, 82, 83;,
3; 87, 86, 85;,
3; 88, 86, 87;,
3; 91, 90, 89;,
3; 92, 90, 91;,
3; 95, 94, 93;,
3; 96, 94, 95;,
3; 91, 88, 92;,
3; 86, 88, 91;,
3; 99, 98, 97;,
3; 100, 98, 99;,
3; 103, 102, 101;,
3; 106, 105, 104;;

MeshMaterialList {
1;
53;
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0;
Material mat30 {
  0.687500; 0.687500; 0.687500; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "7CE8BE8_c.bmp";
  }
  DiffuseTextureFileName  {
     "7CE8BE8_c.bmp";
  }
  FS10Material {
    0.687500; 0.687500; 0.687500; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "7CE8BE8_c.bmp";
    }
  }
}
}

MeshNormals {
107;
0.71861; 0.04681; 0.69383;,
0.71861; 0.04681; 0.69383;,
0.71861; 0.04681; 0.69383;,
0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;,
0.00000; 0.70710; 0.70711;,
0.00000; 0.70710; 0.70711;,
0.00000; 0.70710; 0.70711;,
0.00000; 0.70710; 0.70711;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.71334; 0.00000; -0.70082;,
-0.71334; 0.00000; -0.70082;,
-0.71334; 0.00000; -0.70082;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;,
0.70780; -0.01547; 0.70624;,
0.70780; -0.01547; 0.70624;,
0.70780; -0.01547; 0.70624;,
0.70849; 0.00000; 0.70572;,
0.70849; 0.00000; 0.70572;,
0.70849; 0.00000; 0.70572;,
0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;,
-0.70074; 0.01489; -0.71326;,
-0.70074; 0.01489; -0.71326;,
-0.70074; 0.01489; -0.71326;,
-0.70711; 0.00000; -0.70711;,
-0.70711; 0.00000; -0.70711;,
-0.70711; 0.00000; -0.70711;,
-0.71334; 0.00000; -0.70082;,
0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
-0.70711; 0.00000; 0.70711;,
0.70711; 0.00000; -0.70711;,
0.70711; 0.00000; -0.70711;,
0.70711; 0.00000; -0.70711;,
0.70711; 0.00000; -0.70711;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
-0.70843; 0.00000; 0.70578;,
-0.70843; 0.00000; 0.70578;,
-0.70843; 0.00000; 0.70578;,
-0.70843; 0.00000; 0.70578;,
0.70860; 0.01373; 0.70548;,
0.70860; 0.01373; 0.70548;,
0.70860; 0.01373; 0.70548;,
0.70490; -0.01833; 0.70907;,
0.70490; -0.01833; 0.70907;,
0.70490; -0.01833; 0.70907;;

53;
3; 2, 1, 0;,
3; 5, 4, 3;,
3; 6, 4, 5;,
3; 9, 8, 7;,
3; 10, 8, 9;,
3; 13, 12, 11;,
3; 14, 12, 13;,
3; 17, 16, 15;,
3; 18, 13, 11;,
3; 16, 20, 19;,
3; 15, 16, 19;,
3; 23, 22, 21;,
3; 24, 22, 23;,
3; 27, 26, 25;,
3; 28, 26, 27;,
3; 31, 30, 29;,
3; 32, 30, 31;,
3; 35, 34, 33;,
3; 36, 34, 35;,
3; 39, 38, 37;,
3; 42, 41, 40;,
3; 45, 44, 43;,
3; 37, 38, 46;,
3; 43, 44, 47;,
3; 50, 49, 48;,
3; 51, 49, 50;,
3; 54, 53, 52;,
3; 55, 53, 54;,
3; 58, 57, 56;,
3; 61, 60, 59;,
3; 64, 63, 62;,
3; 65, 63, 64;,
3; 68, 67, 66;,
3; 71, 70, 69;,
3; 42, 72, 41;,
3; 75, 74, 73;,
3; 76, 74, 75;,
3; 79, 78, 77;,
3; 80, 78, 79;,
3; 83, 82, 81;,
3; 84, 82, 83;,
3; 87, 86, 85;,
3; 88, 86, 87;,
3; 91, 90, 89;,
3; 92, 90, 91;,
3; 95, 94, 93;,
3; 96, 94, 95;,
3; 91, 88, 92;,
3; 86, 88, 91;,
3; 99, 98, 97;,
3; 100, 98, 99;,
3; 103, 102, 101;,
3; 106, 105, 104;;
}
MeshTextureCoords {
107;
0.75000; 0.59375;,
1.00000; 0.59375;,
0.25000; 0.87500;,
0.00000; 0.00000;,
4.00000; 0.00000;,
0.00000; 1.00000;,
4.00000; 1.00000;,
2.90918; 0.75000;,
5.09082; 0.75000;,
2.90918; 0.87500;,
5.09082; 0.87500;,
-1.40625; 0.87500;,
0.00000; 0.87500;,
-1.50000; 1.00000;,
0.00000; 1.00000;,
-1.50000; 0.87500;,
0.00000; 1.00000;,
-1.50000; 1.00000;,
-1.50000; 0.87500;,
-0.09375; 0.87500;,
0.00000; 0.87500;,
0.50000; 0.75000;,
0.50000; 0.00000;,
0.75000; 0.75000;,
0.75000; 0.00000;,
3.82812; 0.75000;,
3.82812; 0.00000;,
4.00000; 0.75000;,
4.00000; 0.00000;,
0.00000; 0.00000;,
1.50000; 0.00000;,
0.00000; 0.75000;,
1.50000; 0.75000;,
1.50000; 0.63184;,
0.00000; 0.63184;,
1.50000; 0.75000;,
0.00000; 0.75000;,
0.50000; 0.59375;,
1.35352; 0.00000;,
1.35352; 0.59375;,
1.00000; 0.71875;,
0.50000; 0.71875;,
1.00000; 0.59375;,
1.85352; 0.59375;,
1.00000; 0.71875;,
1.00000; 0.59375;,
0.50000; 0.00000;,
1.85352; 0.71875;,
-3.00000; 0.00000;,
3.00000; 0.00000;,
-3.00000; 1.00000;,
3.00000; 1.00000;,
0.50000; 0.00000;,
0.50000; 1.00000;,
-1.50000; 0.00000;,
-1.50000; 1.00000;,
-2.00000; 1.00000;,
0.25000; 0.87500;,
2.00000; 1.00000;,
-2.00000; 0.87500;,
0.25000; 0.87500;,
-2.00000; 1.00000;,
1.00000; 0.59375;,
2.00000; 0.59375;,
0.25000; 0.87500;,
2.00000; 1.00000;,
1.00000; 0.59375;,
0.50000; 0.00000;,
1.50000; 0.59375;,
1.50000; 0.59375;,
0.50000; 0.00000;,
1.50000; 0.00000;,
0.50000; 0.00000;,
-1.00000; 0.71875;,
-1.00000; 0.00000;,
0.75000; 0.71875;,
0.75000; 0.00000;,
-1.50000; 0.00000;,
1.00000; 0.00000;,
-1.50000; 0.71875;,
1.00000; 0.71875;,
0.00000; 0.71875;,
0.00000; 0.00000;,
2.50000; 0.71875;,
2.50000; 0.00000;,
5.09082; 1.00000;,
5.09082; 0.75000;,
8.00000; 1.00000;,
8.00000; 0.00000;,
2.90918; 1.00000;,
0.00000; 1.00000;,
2.90918; 0.75000;,
0.00000; 0.00000;,
0.00000; 0.63379;,
1.50000; 0.63379;,
0.00000; 0.75586;,
1.50000; 0.75586;,
2.35352; 0.61621;,
0.00000; 0.61621;,
2.35352; 0.00000;,
0.00000; 0.00000;,
2.00000; 0.87500;,
0.00000; 0.87500;,
1.75000; 0.62500;,
1.75000; 0.62500;,
0.00000; 0.87500;,
0.25000; 0.62500;;
}

}

}

Frame frmpart31_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part31 {
8;
11.94000; 0.92000; -33.39500;,
12.74000; -0.68000; -33.39500;,
12.74000; 0.92000; -33.39500;,
11.94000; -0.68000; -33.39500;,
10.14000; 0.92000; -33.39500;,
9.34000; -0.68000; -33.39500;,
10.14000; -0.68000; -33.39500;,
9.34000; 0.92000; -33.39500;;

4;
3; 2, 1, 0;,
3; 1, 3, 0;,
3; 6, 5, 4;,
3; 5, 7, 4;;

MeshMaterialList {
1;
4;
0,
0,
0,
0;
Material mat31 {
  0.687500; 0.687500; 0.687500; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "AF79BFC_c.bmp";
  }
  DiffuseTextureFileName  {
     "AF79BFC_c.bmp";
  }
  FS10Material {
    0.687500; 0.687500; 0.687500; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "AF79BFC_c.bmp";
    }
  }
}
}

MeshNormals {
8;
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;;

4;
3; 2, 1, 0;,
3; 1, 3, 0;,
3; 6, 5, 4;,
3; 5, 7, 4;;
}
MeshTextureCoords {
8;
0.00000; 1.00000;,
1.00000; 0.00000;,
1.00000; 1.00000;,
0.00000; 0.00000;,
1.00000; 1.00000;,
0.00000; 0.00000;,
1.00000; 0.00000;,
0.00000; 1.00000;;
}

}

}

Frame frmpart32_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part32 {
36;
11.94000; 0.92000; -34.99500;,
11.94000; 0.92000; -33.79501;,
10.14000; 0.92000; -34.99500;,
10.14000; 0.92000; -33.79501;,
11.94000; 1.21000; -33.79501;,
10.14000; 1.21000; -33.79501;,
11.94000; 0.92000; -33.79501;,
10.14000; 0.92000; -33.79501;,
10.14000; 0.92000; -33.39500;,
10.14000; 1.81000; -33.79501;,
10.14000; 2.32000; -33.39500;,
10.14000; 0.92000; -33.79501;,
11.94000; 1.81000; -33.79501;,
11.94000; 0.92000; -33.39500;,
11.94000; 2.32000; -33.39500;,
11.94000; 0.92000; -33.79501;,
9.34000; 2.32000; -33.39500;,
9.34000; 2.32000; -34.19500;,
9.34000; 0.92000; -33.39500;,
9.34000; 0.92000; -34.19500;,
11.94000; 2.32000; -34.19500;,
11.94000; 1.81000; -34.19500;,
10.14000; 2.32000; -34.19500;,
10.14000; 1.81000; -34.19500;,
11.94000; 2.32000; -33.39500;,
12.74000; 0.92000; -33.39500;,
12.74000; 2.32000; -33.39500;,
11.94000; 0.92000; -33.39500;,
12.74000; 0.92000; -33.39500;,
12.74000; 0.92000; -34.19500;,
12.74000; 2.32000; -33.39500;,
12.74000; 2.32000; -34.19500;,
9.34000; 0.92000; -33.39500;,
10.14000; 2.32000; -33.39500;,
9.34000; 2.32000; -33.39500;,
10.14000; 0.92000; -33.39500;;

20;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 7, 5, 6;,
3; 10, 9, 8;,
3; 9, 11, 8;,
3; 14, 13, 12;,
3; 13, 15, 12;,
3; 18, 17, 16;,
3; 19, 17, 18;,
3; 21, 20, 12;,
3; 12, 20, 14;,
3; 23, 9, 22;,
3; 22, 9, 10;,
3; 26, 25, 24;,
3; 24, 25, 27;,
3; 30, 29, 28;,
3; 31, 29, 30;,
3; 34, 33, 32;,
3; 33, 35, 32;;

MeshMaterialList {
1;
20;
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0;
Material mat32 {
  0.687500; 0.687500; 0.687500; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "75FA333A_c.bmp";
  }
  DiffuseTextureFileName  {
     "75FA333A_c.bmp";
  }
  FS10Material {
    0.687500; 0.687500; 0.687500; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "75FA333A_c.bmp";
    }
  }
}
}

MeshNormals {
36;
0.00000; -1.00000; 0.00000;,
0.00000; -1.00000; 0.00000;,
0.00000; -1.00000; 0.00000;,
0.00000; -1.00000; 0.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;;

20;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 7, 5, 6;,
3; 10, 9, 8;,
3; 9, 11, 8;,
3; 14, 13, 12;,
3; 13, 15, 12;,
3; 18, 17, 16;,
3; 19, 17, 18;,
3; 21, 20, 12;,
3; 12, 20, 14;,
3; 23, 9, 22;,
3; 22, 9, 10;,
3; 26, 25, 24;,
3; 24, 25, 27;,
3; 30, 29, 28;,
3; 31, 29, 30;,
3; 34, 33, 32;,
3; 33, 35, 32;;
}
MeshTextureCoords {
36;
2.00000; 0.69434;,
2.00000; 0.02783;,
0.00000; 0.69434;,
0.00000; 0.02783;,
2.00000; 0.20606;,
0.00000; 0.20606;,
2.00000; 0.00000;,
0.00000; 0.00000;,
0.00000; 0.00000;,
0.50000; 0.63477;,
0.00000; 1.00000;,
0.50000; 0.00000;,
0.50000; 0.63477;,
1.00000; 0.00000;,
1.00000; 1.00000;,
0.50000; 0.00000;,
1.00000; 1.00000;,
0.00000; 1.00000;,
1.00000; 0.00000;,
0.00000; 0.00000;,
0.00000; 1.00000;,
0.00000; 0.63477;,
1.00000; 1.00000;,
1.00000; 0.63477;,
0.00000; 1.00000;,
1.00000; 0.00000;,
1.00000; 1.00000;,
0.00000; 0.00000;,
0.00000; 0.00000;,
1.00000; 0.00000;,
0.00000; 1.00000;,
1.00000; 1.00000;,
0.00000; 0.00000;,
1.00000; 1.00000;,
0.00000; 1.00000;,
1.00000; 0.00000;;
}

}

}

Frame frmpart33_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part33 {
24;
1.87500; 1.72000; -8.13500;,
1.77500; 1.72000; -7.96000;,
1.87500; -0.28000; -8.13500;,
1.77500; -0.28000; -7.96000;,
1.70000; 1.72000; -8.23500;,
1.87500; 1.72000; -8.13500;,
1.70000; -0.28000; -8.23500;,
1.87500; -0.28000; -8.13500;,
1.70000; 1.72000; -8.23500;,
1.70000; -0.28000; -8.23500;,
1.60000; 1.72000; -8.06000;,
1.60000; -0.28000; -8.06000;,
2.84000; 1.72000; -7.57500;,
2.84000; -0.28000; -7.57500;,
2.74000; 1.72000; -7.40000;,
2.74000; -0.28000; -7.40000;,
2.84000; 1.72000; -7.57500;,
3.01500; 1.72000; -7.47500;,
2.84000; -0.28000; -7.57500;,
3.01500; -0.28000; -7.47500;,
3.01500; 1.72000; -7.47500;,
2.91500; 1.72000; -7.30000;,
3.01500; -0.28000; -7.47500;,
2.91500; -0.28000; -7.30000;;

12;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 7, 5, 6;,
3; 10, 9, 8;,
3; 11, 9, 10;,
3; 14, 13, 12;,
3; 15, 13, 14;,
3; 18, 17, 16;,
3; 19, 17, 18;,
3; 22, 21, 20;,
3; 23, 21, 22;;

MeshMaterialList {
1;
12;
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0;
Material mat33 {
  0.687500; 0.687500; 0.687500; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "38023977_c.bmp";
  }
  DiffuseTextureFileName  {
     "38023977_c.bmp";
  }
  FS10Material {
    0.687500; 0.687500; 0.687500; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "38023977_c.bmp";
    }
  }
}
}

MeshNormals {
24;
0.86824; 0.00000; 0.49614;,
0.86824; 0.00000; 0.49614;,
0.86824; 0.00000; 0.49614;,
0.86824; 0.00000; 0.49614;,
0.49614; 0.00000; -0.86824;,
0.49614; 0.00000; -0.86824;,
0.49614; 0.00000; -0.86824;,
0.49614; 0.00000; -0.86824;,
-0.86824; 0.00000; -0.49614;,
-0.86824; 0.00000; -0.49614;,
-0.86824; 0.00000; -0.49614;,
-0.86824; 0.00000; -0.49614;,
-0.86824; 0.00000; -0.49614;,
-0.86824; 0.00000; -0.49614;,
-0.86824; 0.00000; -0.49614;,
-0.86824; 0.00000; -0.49614;,
0.49614; 0.00000; -0.86824;,
0.49614; 0.00000; -0.86824;,
0.49614; 0.00000; -0.86824;,
0.49614; 0.00000; -0.86824;,
0.86824; 0.00000; 0.49614;,
0.86824; 0.00000; 0.49614;,
0.86824; 0.00000; 0.49614;,
0.86824; 0.00000; 0.49614;;

12;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 7, 5, 6;,
3; 10, 9, 8;,
3; 11, 9, 10;,
3; 14, 13, 12;,
3; 15, 13, 14;,
3; 18, 17, 16;,
3; 19, 17, 18;,
3; 22, 21, 20;,
3; 23, 21, 22;;
}
MeshTextureCoords {
24;
1.00000; 5.00000;,
0.00000; 4.50000;,
1.00000; 0.00000;,
0.00000; -0.50000;,
1.00000; 5.00000;,
0.00000; 4.50000;,
1.00000; 0.00000;,
0.00000; -0.50000;,
0.00000; 4.50000;,
0.00000; -0.50000;,
1.00000; 5.00000;,
1.00000; 0.00000;,
0.00000; 4.50000;,
0.00000; -0.50000;,
1.00000; 5.00000;,
1.00000; 0.00000;,
1.00000; 5.00000;,
0.00000; 4.50000;,
1.00000; 0.00000;,
0.00000; -0.50000;,
1.00000; 5.00000;,
0.00000; 4.50000;,
1.00000; 0.00000;,
0.00000; -0.50000;;
}

}

}

Frame frmpart34_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part34 {
12;
-10.56000; 0.78500; -0.68000;,
-10.56000; 1.18500; -0.68000;,
-10.56000; 0.78500; -3.68000;,
-10.56000; 1.18500; -3.68000;,
-1.75500; 0.78500; 3.39500;,
-1.75500; 1.18500; 3.39500;,
-5.95500; 0.78500; 3.39500;,
-5.95500; 1.18500; 3.39500;,
2.60000; 0.78500; -3.44000;,
2.60000; 1.18500; -3.44000;,
2.60000; 0.78500; -0.04000;,
2.60000; 1.18500; -0.04000;;

6;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 7, 5, 6;,
3; 10, 9, 8;,
3; 11, 9, 10;;

MeshMaterialList {
1;
6;
0,
0,
0,
0,
0,
0;
Material mat34 {
  0.687500; 0.687500; 0.687500; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "3C7695F0_c.bmp";
  }
  DiffuseTextureFileName  {
     "3C7695F0_c.bmp";
  }
  FS10Material {
    0.687500; 0.687500; 0.687500; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "3C7695F0_c.bmp";
    }
  }
}
}

MeshNormals {
12;
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;;

6;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 7, 5, 6;,
3; 10, 9, 8;,
3; 11, 9, 10;;
}
MeshTextureCoords {
12;
17.15625; 0.00000;,
17.15625; 1.00000;,
-15.00000; 0.00000;,
-15.00000; 1.00000;,
22.00000; 0.00000;,
22.00000; 1.00000;,
-20.00000; 0.00000;,
-20.00000; 1.00000;,
18.00000; 0.00000;,
18.00000; 1.00000;,
-16.00000; 0.00000;,
-16.00000; 1.00000;;
}

}

}

Frame frmpart35_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part35 {
12;
0.34000; 1.98500; -4.61000;,
0.34000; 1.98500; -3.36000;,
0.34000; 2.36000; -3.98500;,
1.59000; 1.98500; -3.36000;,
1.59000; 1.98500; -4.61000;,
1.59000; 2.36000; -3.98500;,
1.59000; 1.61000; -2.73500;,
0.96500; 1.98500; -2.73500;,
0.34000; 1.61000; -2.73500;,
1.59000; 1.61000; -5.86000;,
0.34000; 1.61000; -5.86000;,
0.96500; 1.98500; -5.86000;;

4;
3; 2, 1, 0;,
3; 5, 4, 3;,
3; 8, 7, 6;,
3; 11, 10, 9;;

MeshMaterialList {
1;
4;
0,
0,
0,
0;
Material mat35 {
  0.687500; 0.687500; 0.687500; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "44BBA858_c.bmp";
  }
  DiffuseTextureFileName  {
     "44BBA858_c.bmp";
  }
  FS10Material {
    0.687500; 0.687500; 0.687500; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "44BBA858_c.bmp";
    }
  }
}
}

MeshNormals {
12;
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;;

4;
3; 2, 1, 0;,
3; 5, 4, 3;,
3; 8, 7, 6;,
3; 11, 10, 9;;
}
MeshTextureCoords {
12;
-1.00000; 0.00000;,
1.00000; 0.00000;,
0.00000; 1.00000;,
-1.00000; 0.00000;,
1.00000; 0.00000;,
0.00000; 1.00000;,
1.00000; 0.00000;,
0.00000; 1.00000;,
-1.00000; 0.00000;,
-1.00000; 0.00000;,
1.00000; 0.00000;,
0.00000; 1.00000;;
}

}

}

Frame frmpart36_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part36 {
34;
0.34000; 1.61000; -5.86000;,
0.34000; 0.98500; -2.73500;,
0.34000; 1.61000; -2.73500;,
0.34000; 0.98500; -5.86000;,
1.59000; 1.61000; -5.86000;,
1.59000; 1.61000; -2.73500;,
1.59000; 0.98500; -5.86000;,
1.59000; 0.98500; -2.73500;,
1.59000; 1.61000; -5.86000;,
1.59000; 0.98500; -5.86000;,
0.34000; 1.61000; -5.86000;,
0.34000; 0.98500; -5.86000;,
0.34000; 1.98500; -4.61000;,
0.96500; 1.98500; -4.61000;,
0.34000; 1.61000; -4.61000;,
1.59000; 1.61000; -4.61000;,
1.59000; 1.98500; -4.61000;,
0.34000; 1.61000; -3.36000;,
0.34000; 1.98500; -3.36000;,
0.34000; 1.61000; -4.61000;,
0.34000; 1.98500; -4.61000;,
0.96500; 1.98500; -3.36000;,
1.59000; 1.61000; -3.36000;,
1.59000; 1.98500; -3.36000;,
0.34000; 1.98500; -3.36000;,
0.34000; 1.61000; -3.36000;,
1.59000; 1.61000; -2.73500;,
0.34000; 1.61000; -2.73500;,
1.59000; 0.98500; -2.73500;,
0.34000; 0.98500; -2.73500;,
1.59000; 1.98500; -3.36000;,
1.59000; 1.61000; -3.36000;,
1.59000; 1.98500; -4.61000;,
1.59000; 1.61000; -4.61000;;

16;
3; 2, 1, 0;,
3; 0, 1, 3;,
3; 6, 5, 4;,
3; 7, 5, 6;,
3; 10, 9, 8;,
3; 11, 9, 10;,
3; 14, 13, 12;,
3; 16, 13, 15;,
3; 19, 18, 17;,
3; 20, 18, 19;,
3; 23, 22, 21;,
3; 25, 24, 21;,
3; 28, 27, 26;,
3; 29, 27, 28;,
3; 32, 31, 30;,
3; 33, 31, 32;;

MeshMaterialList {
1;
16;
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0;
Material mat36 {
  0.687500; 0.687500; 0.687500; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "7B04F5EE_c.bmp";
  }
  DiffuseTextureFileName  {
     "7B04F5EE_c.bmp";
  }
  FS10Material {
    0.687500; 0.687500; 0.687500; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "7B04F5EE_c.bmp";
    }
  }
}
}

MeshNormals {
34;
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;;

16;
3; 2, 1, 0;,
3; 0, 1, 3;,
3; 6, 5, 4;,
3; 7, 5, 6;,
3; 10, 9, 8;,
3; 11, 9, 10;,
3; 14, 13, 12;,
3; 16, 13, 15;,
3; 19, 18, 17;,
3; 20, 18, 19;,
3; 23, 22, 21;,
3; 25, 24, 21;,
3; 28, 27, 26;,
3; 29, 27, 28;,
3; 32, 31, 30;,
3; 33, 31, 32;;
}
MeshTextureCoords {
34;
-6.00000; 1.00000;,
4.00000; 0.00000;,
4.00000; 1.00000;,
-6.00000; 0.00000;,
5.00000; 1.00000;,
-5.00000; 1.00000;,
5.00000; 0.00000;,
-5.00000; 0.00000;,
-3.00000; 1.00000;,
-3.00000; 0.00000;,
1.00000; 1.00000;,
1.00000; 0.00000;,
1.00000; 1.00000;,
0.00000; 1.00000;,
1.00000; 0.14258;,
-1.00000; 0.14258;,
-1.00000; 1.00000;,
1.00000; 0.14258;,
1.00000; 1.00000;,
-3.00000; 0.14258;,
-3.00000; 1.00000;,
0.00000; 1.00000;,
1.00000; 0.14258;,
1.00000; 1.00000;,
-1.00000; 1.00000;,
-1.00000; 0.14258;,
1.00000; 1.00000;,
-3.00000; 1.00000;,
1.00000; 0.00000;,
-3.00000; 0.00000;,
-3.00000; 1.00000;,
-3.00000; 0.14258;,
1.00000; 1.00000;,
1.00000; 0.14258;;
}

}

}

Frame frmpart37_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part37 {
24;
0.96500; 1.98500; -4.61000;,
0.96500; 1.98500; -5.86000;,
0.34000; 1.61000; -4.61000;,
0.34000; 1.61000; -5.86000;,
0.96500; 1.98500; -4.61000;,
1.59000; 1.61000; -4.61000;,
0.96500; 1.98500; -5.86000;,
1.59000; 1.61000; -5.86000;,
1.59000; 2.36000; -3.98500;,
0.34000; 2.36000; -3.98500;,
1.59000; 1.98500; -3.36000;,
0.34000; 1.98500; -3.36000;,
1.59000; 1.98500; -4.61000;,
0.34000; 1.98500; -4.61000;,
1.59000; 2.36000; -3.98500;,
0.34000; 2.36000; -3.98500;,
0.96500; 1.98500; -2.73500;,
1.59000; 1.61000; -2.73500;,
0.96500; 1.98500; -3.36000;,
1.59000; 1.61000; -3.36000;,
0.96500; 1.98500; -3.36000;,
0.34000; 1.61000; -3.36000;,
0.96500; 1.98500; -2.73500;,
0.34000; 1.61000; -2.73500;;

12;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 7, 5, 6;,
3; 10, 9, 8;,
3; 11, 9, 10;,
3; 14, 13, 12;,
3; 15, 13, 14;,
3; 18, 17, 16;,
3; 19, 17, 18;,
3; 22, 21, 20;,
3; 23, 21, 22;;

MeshMaterialList {
1;
12;
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0;
Material mat37 {
  0.687500; 0.687500; 0.687500; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "F09CE01_c.bmp";
  }
  DiffuseTextureFileName  {
     "F09CE01_c.bmp";
  }
  FS10Material {
    0.687500; 0.687500; 0.687500; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "F09CE01_c.bmp";
    }
  }
}
}

MeshNormals {
24;
-0.51450; 0.85749; 0.00000;,
-0.51450; 0.85749; 0.00000;,
-0.51450; 0.85749; 0.00000;,
-0.51450; 0.85749; 0.00000;,
0.51450; 0.85749; 0.00000;,
0.51450; 0.85749; 0.00000;,
0.51450; 0.85749; 0.00000;,
0.51450; 0.85749; 0.00000;,
0.00000; 0.85749; 0.51450;,
0.00000; 0.85749; 0.51450;,
0.00000; 0.85749; 0.51450;,
0.00000; 0.85749; 0.51450;,
0.00000; 0.85749; -0.51450;,
0.00000; 0.85749; -0.51450;,
0.00000; 0.85749; -0.51450;,
0.00000; 0.85749; -0.51450;,
0.51450; 0.85749; 0.00000;,
0.51450; 0.85749; 0.00000;,
0.51450; 0.85749; 0.00000;,
0.51450; 0.85749; 0.00000;,
-0.51450; 0.85749; 0.00000;,
-0.51450; 0.85749; 0.00000;,
-0.51450; 0.85749; 0.00000;,
-0.51450; 0.85749; 0.00000;;

12;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 7, 5, 6;,
3; 10, 9, 8;,
3; 11, 9, 10;,
3; 14, 13, 12;,
3; 15, 13, 14;,
3; 18, 17, 16;,
3; 19, 17, 18;,
3; 22, 21, 20;,
3; 23, 21, 22;;
}
MeshTextureCoords {
24;
1.00000; 1.00000;,
-1.00000; 1.00000;,
1.00000; -0.16797;,
-1.00000; -0.16797;,
1.00000; 1.00000;,
1.00000; -0.16797;,
-1.00000; 1.00000;,
-1.00000; -0.16797;,
-1.00000; 1.00000;,
1.00000; 1.00000;,
-1.00000; -0.16797;,
1.00000; -0.16797;,
-1.00000; -0.16797;,
1.00000; -0.16797;,
-1.00000; 1.00000;,
1.00000; 1.00000;,
1.00000; 1.00000;,
1.00000; -0.16797;,
0.00000; 1.00000;,
0.00000; -0.16797;,
0.00000; 1.00000;,
0.00000; -0.16797;,
1.00000; 1.00000;,
1.00000; -0.16797;;
}

}

}

Frame frmpart38_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part38 {
16;
2.91000; 1.17500; -5.72500;,
2.91000; 0.97500; -5.72500;,
2.91500; 1.37500; -6.64500;,
2.91500; 1.17500; -6.64500;,
2.91500; 1.37500; -6.64500;,
2.91500; 1.17500; -6.64500;,
2.91500; 1.72000; -7.30000;,
2.91500; 1.52000; -7.30000;,
0.29000; 1.28000; -7.33500;,
1.60000; 1.72000; -8.06000;,
0.29000; 1.08000; -7.33500;,
1.60000; 1.52000; -8.06000;,
0.29000; 1.28000; -7.33500;,
0.29000; 1.08000; -7.33500;,
-1.02000; 1.05500; -6.60500;,
-1.02000; 0.85500; -6.60500;;

8;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 7, 5, 6;,
3; 10, 9, 8;,
3; 11, 9, 10;,
3; 14, 13, 12;,
3; 15, 13, 14;;

MeshMaterialList {
1;
8;
0,
0,
0,
0,
0,
0,
0,
0;
Material mat38 {
  0.687500; 0.687500; 0.687500; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "4BA7F79_c.bmp";
  }
  DiffuseTextureFileName  {
     "4BA7F79_c.bmp";
  }
  FS10Material {
    0.687500; 0.687500; 0.687500; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "4BA7F79_c.bmp";
    }
  }
}
}

MeshNormals {
16;
0.99999; 0.00000; 0.00543;,
0.99999; 0.00000; 0.00543;,
0.99999; 0.00000; 0.00543;,
0.99999; 0.00000; 0.00543;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
-0.48422; 0.00000; -0.87494;,
-0.48422; 0.00000; -0.87494;,
-0.48422; 0.00000; -0.87494;,
-0.48422; 0.00000; -0.87494;,
-0.48677; 0.00000; -0.87353;,
-0.48677; 0.00000; -0.87353;,
-0.48677; 0.00000; -0.87353;,
-0.48677; 0.00000; -0.87353;;

8;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 7, 5, 6;,
3; 10, 9, 8;,
3; 11, 9, 10;,
3; 14, 13, 12;,
3; 15, 13, 14;;
}
MeshTextureCoords {
16;
1.64746; 1.00000;,
1.64746; 0.00000;,
3.94238; 1.00000;,
3.94238; 0.00000;,
3.94238; 1.00000;,
3.94238; 0.00000;,
5.58984; 1.00000;,
5.58984; 0.00000;,
3.75000; 1.00000;,
0.00000; 1.00000;,
3.75000; 0.00000;,
0.00000; 0.00000;,
3.75000; 1.00000;,
3.75000; 0.00000;,
7.50000; 1.00000;,
7.50000; 0.00000;;
}

}

}

Frame frmpart39_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part39 {
161;
29.60500; 0.42000; -9.07500;,
30.22500; 0.14500; -9.02500;,
29.93500; 0.54000; -13.70500;,
18.40000; 1.22000; -15.54500;,
18.40000; 1.22000; -7.04500;,
18.40000; 0.22000; -7.04500;,
28.32500; 0.80500; -12.77500;,
27.53000; 1.02500; -10.27500;,
28.39500; 0.67000; -9.77500;,
30.22500; 0.14500; -9.02500;,
29.60500; 0.42000; -9.07500;,
30.42000; -0.21500; -7.15500;,
27.53000; 1.02500; -10.27500;,
27.89000; -0.20500; -6.37000;,
28.39500; 0.67000; -9.77500;,
28.39500; 0.67000; -9.77500;,
27.89000; -0.20500; -6.37000;,
28.41500; -0.42000; -6.34000;,
27.89000; -0.20500; -6.37000;,
25.76000; -1.48000; -2.79500;,
27.81500; -0.74500; -5.27500;,
27.89000; -0.20500; -6.37000;,
27.81500; -0.74500; -5.27500;,
28.41500; -0.42000; -6.34000;,
-18.40500; -2.28000; 5.70500;,
-17.33500; -3.28000; 13.58500;,
-17.33500; -2.48000; 13.58500;,
-18.40500; -2.28000; 5.70500;,
-13.94500; -1.73000; 2.65500;,
-18.40500; -3.28000; 5.70500;,
-17.33500; -1.68000; 13.58500;,
-18.40500; -3.28000; 5.70500;,
-15.62500; -1.69000; 19.21500;,
-17.33500; -1.68000; 13.58500;,
-15.62500; -1.89000; 19.21500;,
-17.33500; -2.48000; 13.58500;,
-15.02500; -1.69000; 19.41500;,
-15.62500; -1.69000; 19.21500;,
-15.02500; -1.89000; 19.41500;,
-15.62500; -1.89000; 19.21500;,
-14.32000; -2.32500; 18.31500;,
-17.33500; -2.48000; 13.58500;,
-14.32000; -2.72500; 18.31500;,
-17.33500; -3.28000; 13.58500;,
-11.04500; -2.28000; 18.45500;,
-14.32000; -1.72500; 18.31500;,
-14.32000; -2.32500; 18.31500;,
-14.32000; -2.72500; 18.31500;,
-15.02500; -1.89000; 19.41500;,
-14.32000; -1.72500; 18.31500;,
-15.02500; -1.69000; 19.41500;,
-14.32000; -2.32500; 18.31500;,
-15.62500; -1.89000; 19.21500;,
-14.32000; -2.32500; 18.31500;,
-15.02500; -1.89000; 19.41500;,
-15.62500; -1.89000; 19.21500;,
-17.33500; -2.48000; 13.58500;,
-14.32000; -2.32500; 18.31500;,
32.91500; -1.08000; -24.54500;,
31.12000; -0.79000; -26.35000;,
31.12000; -0.19000; -26.35000;,
25.76000; -1.08000; -28.29500;,
28.85000; -0.09000; -27.17500;,
28.85000; -0.79000; -27.17500;,
31.12000; -1.08000; -26.35000;,
31.12000; -1.08000; -26.35000;,
28.85000; -0.79000; -27.17500;,
31.12000; -0.79000; -26.35000;,
29.21500; -0.39000; -27.57000;,
29.21500; -0.09000; -27.57000;,
28.85500; -0.19000; -29.02500;,
28.85500; 0.01000; -29.02500;,
29.21500; -0.09000; -27.57000;,
29.21500; -0.39000; -27.57000;,
28.85000; -0.09000; -27.17500;,
28.85000; -0.79000; -27.17500;,
28.85500; 0.01000; -29.02500;,
29.58000; 0.01000; -29.36000;,
28.85500; -0.19000; -29.02500;,
29.58000; -0.19000; -29.36000;,
29.20500; -0.90000; -29.01500;,
29.33000; -0.58000; -29.14500;,
29.50500; -0.86000; -29.19000;,
31.12000; -0.79000; -26.35000;,
28.85000; -0.79000; -27.17500;,
29.21500; -0.39000; -27.57000;,
29.20500; -0.90000; -29.01500;,
29.50500; -0.92000; -28.84000;,
29.33000; -0.58000; -28.88500;,
29.33000; -0.58000; -29.14500;,
29.20500; -0.90000; -29.01500;,
29.33000; -0.58000; -28.88500;,
29.50500; -0.92000; -28.84000;,
29.50500; -0.86000; -29.19000;,
29.55500; -0.58000; -29.01500;,
29.33000; -0.58000; -28.88500;,
29.50500; -0.92000; -28.84000;,
29.55500; -0.58000; -29.01500;,
29.55500; -0.58000; -29.01500;,
29.53000; -0.41000; -28.46000;,
29.33000; -0.58000; -28.88500;,
29.55500; -0.58000; -29.01500;,
29.50500; -0.86000; -29.19000;,
29.33000; -0.58000; -29.14500;,
29.55500; -0.58000; -29.01500;,
29.33000; -0.58000; -29.14500;,
29.58000; -0.19000; -29.36000;,
29.53000; -0.41000; -28.46000;,
29.55500; -0.58000; -29.01500;,
29.58000; -0.19000; -29.36000;,
29.33000; -0.58000; -29.14500;,
29.33000; -0.58000; -28.88500;,
28.85500; -0.19000; -29.02500;,
29.58000; -0.19000; -29.36000;,
29.33000; -0.58000; -29.14500;,
28.85500; -0.19000; -29.02500;,
29.21500; -0.39000; -27.57000;,
28.85500; -0.19000; -29.02500;,
29.53000; -0.41000; -28.46000;,
28.85500; -0.19000; -29.02500;,
29.33000; -0.58000; -28.88500;,
29.53000; -0.41000; -28.46000;,
29.53000; -0.41000; -28.46000;,
31.12000; -0.79000; -26.35000;,
29.21500; -0.39000; -27.57000;,
29.58000; -0.19000; -29.36000;,
31.12000; -0.79000; -26.35000;,
29.53000; -0.41000; -28.46000;,
28.85000; -1.08000; -27.17500;,
28.85000; -1.08000; -27.17500;,
29.58000; 0.01000; -29.36000;,
31.12000; -0.19000; -26.35000;,
29.58000; -0.19000; -29.36000;,
31.12000; -0.79000; -26.35000;,
22.39000; -2.04500; 3.76000;,
22.39000; -1.77000; 4.54500;,
23.77000; -2.10500; 4.55500;,
18.40000; 1.22000; -7.04500;,
11.04000; -0.28000; -2.79500;,
18.40000; 0.22000; -7.04500;,
18.40000; -1.69000; 4.18000;,
18.62000; -1.48000; 5.14000;,
22.39000; -2.04500; 3.76000;,
22.39000; -2.04500; 3.76000;,
18.62000; -1.48000; 5.14000;,
22.39000; -1.77000; 4.54500;,
16.88000; -1.35000; 0.58000;,
17.12000; -1.77500; 2.19500;,
17.38500; -1.66000; 0.87000;,
15.41500; -1.37500; 6.90000;,
18.62000; -1.48000; 5.14000;,
18.40000; -1.69000; 4.18000;,
16.41000; -1.46500; 2.15000;,
14.84000; -1.59000; 3.51000;,
17.12000; -1.77500; 2.19500;,
16.41000; -1.46500; 2.15000;,
17.12000; -1.77500; 2.19500;,
16.88000; -1.35000; 0.58000;,
16.88000; -1.35000; 0.58000;,
17.38500; -1.66000; 0.87000;,
16.25000; -0.82500; -2.16500;;

63;
3; 2, 1, 0;,
3; 5, 4, 3;,
3; 8, 7, 6;,
3; 11, 10, 9;,
3; 14, 13, 12;,
3; 17, 16, 15;,
3; 20, 19, 18;,
3; 23, 22, 21;,
3; 26, 25, 24;,
3; 29, 28, 27;,
3; 26, 24, 30;,
3; 24, 25, 31;,
3; 34, 33, 32;,
3; 35, 33, 34;,
3; 38, 37, 36;,
3; 39, 37, 38;,
3; 42, 41, 40;,
3; 43, 41, 42;,
3; 46, 45, 44;,
3; 47, 46, 44;,
3; 50, 49, 48;,
3; 49, 51, 48;,
3; 54, 53, 52;,
3; 57, 56, 55;,
3; 60, 59, 58;,
3; 63, 62, 61;,
3; 64, 58, 59;,
3; 67, 66, 65;,
3; 70, 69, 68;,
3; 71, 69, 70;,
3; 74, 73, 72;,
3; 75, 73, 74;,
3; 78, 77, 76;,
3; 79, 77, 78;,
3; 82, 81, 80;,
3; 85, 84, 83;,
3; 88, 87, 86;,
3; 91, 90, 89;,
3; 94, 93, 92;,
3; 97, 96, 95;,
3; 100, 99, 98;,
3; 103, 102, 101;,
3; 106, 105, 104;,
3; 109, 108, 107;,
3; 112, 111, 110;,
3; 115, 114, 113;,
3; 118, 117, 116;,
3; 121, 120, 119;,
3; 124, 123, 122;,
3; 127, 126, 125;,
3; 61, 128, 63;,
3; 129, 65, 66;,
3; 132, 131, 130;,
3; 133, 131, 132;,
3; 136, 135, 134;,
3; 139, 138, 137;,
3; 142, 141, 140;,
3; 145, 144, 143;,
3; 148, 147, 146;,
3; 151, 150, 149;,
3; 154, 153, 152;,
3; 157, 156, 155;,
3; 160, 159, 158;;

MeshMaterialList {
1;
63;
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0;
Material mat39 {
  0.687500; 0.687500; 0.687500; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "53350B80_c.bmp";
  }
  DiffuseTextureFileName  {
     "53350B80_c.bmp";
  }
  FS10Material {
    0.687500; 0.687500; 0.687500; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "53350B80_c.bmp";
    }
  }
}
}

MeshNormals {
161;
0.40137; 0.91442; 0.05231;,
0.40137; 0.91442; 0.05231;,
0.40137; 0.91442; 0.05231;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
0.36286; 0.93124; 0.03344;,
0.36286; 0.93124; 0.03344;,
0.36286; 0.93124; 0.03344;,
0.39272; 0.90981; 0.13420;,
0.39272; 0.90981; 0.13420;,
0.39272; 0.90981; 0.13420;,
0.22551; 0.93500; 0.27372;,
0.22551; 0.93500; 0.27372;,
0.22551; 0.93500; 0.27372;,
0.34983; 0.89352; 0.28150;,
0.34983; 0.89352; 0.28150;,
0.34983; 0.89352; 0.28150;,
0.22464; 0.86776; 0.44332;,
0.22464; 0.86776; 0.44332;,
0.22464; 0.86776; 0.44332;,
0.31946; 0.84101; 0.43663;,
0.31946; 0.84101; 0.43663;,
0.31946; 0.84101; 0.43663;,
-0.99091; 0.00000; 0.13455;,
-0.99091; 0.00000; 0.13455;,
-0.99091; 0.00000; 0.13455;,
-0.56448; 0.00000; -0.82544;,
-0.56448; 0.00000; -0.82544;,
-0.56448; 0.00000; -0.82544;,
-0.99091; 0.00000; 0.13455;,
-0.99091; 0.00000; 0.13455;,
-0.95684; 0.00000; 0.29062;,
-0.95684; 0.00000; 0.29062;,
-0.95684; 0.00000; 0.29062;,
-0.95684; 0.00000; 0.29062;,
-0.31623; 0.00000; 0.94868;,
-0.31623; 0.00000; 0.94868;,
-0.31623; 0.00000; 0.94868;,
-0.31623; 0.00000; 0.94868;,
-0.84326; 0.00000; 0.53751;,
-0.84326; 0.00000; 0.53751;,
-0.84326; 0.00000; 0.53751;,
-0.84326; 0.00000; 0.53751;,
-0.04271; 0.00000; 0.99909;,
-0.04271; 0.00000; 0.99909;,
-0.04271; 0.00000; 0.99909;,
-0.04271; 0.00000; 0.99909;,
0.84192; 0.00000; 0.53960;,
0.84192; 0.00000; 0.53960;,
0.84192; 0.00000; 0.53960;,
0.84192; 0.00000; 0.53960;,
-0.10272; -0.94577; 0.30817;,
-0.10272; -0.94577; 0.30817;,
-0.10272; -0.94577; 0.30817;,
-0.20812; -0.96421; 0.16426;,
-0.20812; -0.96421; 0.16426;,
-0.20812; -0.96421; 0.16426;,
0.70907; 0.00000; -0.70514;,
0.70907; 0.00000; -0.70514;,
0.70907; 0.00000; -0.70514;,
0.34077; 0.00000; -0.94015;,
0.34077; 0.00000; -0.94015;,
0.34077; 0.00000; -0.94015;,
0.70907; 0.00000; -0.70514;,
0.34158; 0.00000; -0.93985;,
0.34158; 0.00000; -0.93985;,
0.34158; 0.00000; -0.93985;,
-0.97073; 0.00000; 0.24018;,
-0.97073; 0.00000; 0.24018;,
-0.97073; 0.00000; 0.24018;,
-0.97073; 0.00000; 0.24018;,
-0.73445; 0.00000; -0.67867;,
-0.73445; 0.00000; -0.67867;,
-0.73445; 0.00000; -0.67867;,
-0.73445; 0.00000; -0.67867;,
-0.41946; 0.00000; -0.90777;,
-0.41946; 0.00000; -0.90777;,
-0.41946; 0.00000; -0.90777;,
-0.41946; 0.00000; -0.90777;,
-0.48099; -0.16214; -0.86160;,
-0.48099; -0.16214; -0.86160;,
-0.48099; -0.16214; -0.86160;,
0.21445; -0.77836; -0.59006;,
0.21445; -0.77836; -0.59006;,
0.21445; -0.77836; -0.59006;,
-0.50567; -0.14778; 0.84998;,
-0.50567; -0.14778; 0.84998;,
-0.50567; -0.14778; 0.84998;,
-0.93145; 0.36386; 0.00000;,
-0.93145; 0.36386; 0.00000;,
-0.93145; 0.36386; 0.00000;,
0.98687; -0.15917; -0.02729;,
0.98687; -0.15917; -0.02729;,
0.98687; -0.15917; -0.02729;,
0.46888; 0.34873; 0.81150;,
0.46888; 0.34873; 0.81150;,
0.46888; 0.34873; 0.81150;,
0.17079; -0.93992; 0.29560;,
0.17079; -0.93992; 0.29560;,
0.17079; -0.93992; 0.29560;,
0.45590; 0.41175; -0.78906;,
0.45590; 0.41175; -0.78906;,
0.45590; 0.41175; -0.78906;,
0.39103; -0.62376; -0.67678;,
0.39103; -0.62376; -0.67678;,
0.39103; -0.62376; -0.67678;,
0.99853; -0.01906; 0.05082;,
0.99853; -0.01906; 0.05082;,
0.99853; -0.01906; 0.05082;,
-0.63456; -0.77287; 0.00000;,
-0.63456; -0.77287; 0.00000;,
-0.63456; -0.77287; 0.00000;,
-0.40864; -0.22559; -0.88438;,
-0.40864; -0.22559; -0.88438;,
-0.40864; -0.22559; -0.88438;,
-0.25640; -0.96410; -0.06908;,
-0.25640; -0.96410; -0.06908;,
-0.25640; -0.96410; -0.06908;,
-0.62710; -0.57524; 0.52520;,
-0.62710; -0.57524; 0.52520;,
-0.62710; -0.57524; 0.52520;,
-0.17977; -0.98283; -0.04154;,
-0.17977; -0.98283; -0.04154;,
-0.17977; -0.98283; -0.04154;,
0.07710; -0.96949; -0.23270;,
0.07710; -0.96949; -0.23270;,
0.07710; -0.96949; -0.23270;,
0.34077; 0.00000; -0.94015;,
0.34158; 0.00000; -0.93985;,
0.89025; 0.00000; -0.45547;,
0.89025; 0.00000; -0.45547;,
0.89025; 0.00000; -0.45547;,
0.89025; 0.00000; -0.45547;,
0.22553; 0.91945; -0.32210;,
0.22553; 0.91945; -0.32210;,
0.22553; 0.91945; -0.32210;,
0.50006; 0.00000; 0.86599;,
0.50006; 0.00000; 0.86599;,
0.50006; 0.00000; 0.86599;,
0.06258; 0.97190; -0.22694;,
0.06258; 0.97190; -0.22694;,
0.06258; 0.97190; -0.22694;,
0.02041; 0.94357; -0.33055;,
0.02041; 0.94357; -0.33055;,
0.02041; 0.94357; -0.33055;,
0.44521; 0.88001; 0.16542;,
0.44521; 0.88001; 0.16542;,
0.44521; 0.88001; 0.16542;,
-0.07586; 0.97757; -0.19646;,
-0.07586; 0.97757; -0.19646;,
-0.07586; 0.97757; -0.19646;,
0.33114; 0.82492; 0.45809;,
0.33114; 0.82492; 0.45809;,
0.33114; 0.82492; 0.45809;,
0.38385; 0.90544; 0.18123;,
0.38385; 0.90544; 0.18123;,
0.38385; 0.90544; 0.18123;,
0.50144; 0.86374; 0.05011;,
0.50144; 0.86374; 0.05011;,
0.50144; 0.86374; 0.05011;;

63;
3; 2, 1, 0;,
3; 5, 4, 3;,
3; 8, 7, 6;,
3; 11, 10, 9;,
3; 14, 13, 12;,
3; 17, 16, 15;,
3; 20, 19, 18;,
3; 23, 22, 21;,
3; 26, 25, 24;,
3; 29, 28, 27;,
3; 26, 24, 30;,
3; 24, 25, 31;,
3; 34, 33, 32;,
3; 35, 33, 34;,
3; 38, 37, 36;,
3; 39, 37, 38;,
3; 42, 41, 40;,
3; 43, 41, 42;,
3; 46, 45, 44;,
3; 47, 46, 44;,
3; 50, 49, 48;,
3; 49, 51, 48;,
3; 54, 53, 52;,
3; 57, 56, 55;,
3; 60, 59, 58;,
3; 63, 62, 61;,
3; 64, 58, 59;,
3; 67, 66, 65;,
3; 70, 69, 68;,
3; 71, 69, 70;,
3; 74, 73, 72;,
3; 75, 73, 74;,
3; 78, 77, 76;,
3; 79, 77, 78;,
3; 82, 81, 80;,
3; 85, 84, 83;,
3; 88, 87, 86;,
3; 91, 90, 89;,
3; 94, 93, 92;,
3; 97, 96, 95;,
3; 100, 99, 98;,
3; 103, 102, 101;,
3; 106, 105, 104;,
3; 109, 108, 107;,
3; 112, 111, 110;,
3; 115, 114, 113;,
3; 118, 117, 116;,
3; 121, 120, 119;,
3; 124, 123, 122;,
3; 127, 126, 125;,
3; 61, 128, 63;,
3; 129, 65, 66;,
3; 132, 131, 130;,
3; 133, 131, 132;,
3; 136, 135, 134;,
3; 139, 138, 137;,
3; 142, 141, 140;,
3; 145, 144, 143;,
3; 148, 147, 146;,
3; 151, 150, 149;,
3; 154, 153, 152;,
3; 157, 156, 155;,
3; 160, 159, 158;;
}
MeshTextureCoords {
161;
0.50000; 1.00000;,
0.00000; 0.50000;,
5.00000; 1.00000;,
8.55469; 0.00000;,
0.00000; 0.50000;,
0.00000; 0.00000;,
7.00000; 1.00000;,
4.50000; 1.00000;,
4.00000; 0.50000;,
0.00000; 0.50000;,
0.50000; 1.00000;,
-2.00000; 1.00000;,
4.50000; 1.00000;,
0.00000; 1.00000;,
4.00000; 0.50000;,
4.00000; 0.50000;,
0.00000; 1.00000;,
0.00000; 0.50000;,
1.00000; 1.00000;,
-3.00000; 1.00000;,
-0.25000; 0.62500;,
1.00000; 1.00000;,
-0.25000; 0.62500;,
1.00000; 0.50000;,
0.00000; 1.00000;,
8.00000; 0.00000;,
8.00000; 0.50000;,
8.00000; 1.00000;,
0.00000; 1.00000;,
8.00000; 0.00000;,
8.00000; 1.00000;,
0.00000; 0.00000;,
2.59961; 1.00000;,
-2.00000; 1.00000;,
2.59961; 0.95020;,
-2.00000; 0.50000;,
3.00000; 1.00000;,
2.59961; 1.00000;,
3.00000; 0.95020;,
2.59961; 0.95020;,
4.00000; 0.25000;,
-2.00000; 0.50000;,
4.00000; 0.00000;,
-2.00000; 0.00000;,
5.00000; 1.00000;,
0.00000; 1.00000;,
0.00000; 0.25000;,
0.00000; 0.00000;,
3.00000; 0.95020;,
4.00000; 1.00000;,
3.00000; 1.00000;,
4.00000; 0.25000;,
2.59961; 0.95020;,
4.00000; 0.25000;,
3.00000; 0.95020;,
2.59961; 0.95020;,
-2.00000; 0.50000;,
4.00000; 0.25000;,
0.00000; 1.00000;,
3.00000; 0.28857;,
3.00000; 1.00000;,
3.00000; 1.00000;,
0.00000; 1.00000;,
0.00000; 0.28857;,
3.00000; 0.00000;,
0.00000; 0.00000;,
3.00000; 0.28857;,
0.00000; 0.28857;,
2.74219; 0.68896;,
2.74219; 1.00000;,
3.60254; 0.79980;,
3.60254; 1.00000;,
2.74219; 1.00000;,
2.74219; 0.68896;,
3.00000; 1.00000;,
3.00000; 0.28857;,
3.60254; 1.00000;,
3.07227; 1.00000;,
3.60254; 0.79980;,
3.07227; 0.79980;,
3.36328; 0.00000;,
3.27246; 0.41113;,
3.08691; 0.00000;,
0.00000; 0.28857;,
3.00000; 0.28857;,
2.74219; 0.68896;,
3.36328; 0.00000;,
2.93945; 0.00000;,
3.16211; 0.41113;,
3.27246; 0.41113;,
3.36328; 0.00000;,
3.16211; 0.41113;,
2.93945; 0.00000;,
3.08691; 0.00000;,
2.95508; 0.41113;,
3.16211; 0.41113;,
2.93945; 0.00000;,
2.95508; 0.41113;,
2.95508; 0.41113;,
2.75000; 0.47900;,
3.16211; 0.41113;,
2.95508; 0.41113;,
3.08691; 0.00000;,
3.27246; 0.41113;,
2.95508; 0.41113;,
3.27246; 0.41113;,
3.07227; 0.79980;,
2.75000; 0.47900;,
2.95508; 0.41113;,
3.07227; 0.79980;,
3.27246; 0.41113;,
3.16211; 0.41113;,
3.60254; 0.79980;,
3.07227; 0.79980;,
3.27246; 0.41113;,
3.60254; 0.79980;,
2.74219; 0.68896;,
3.60254; 0.79980;,
2.75000; 0.47900;,
3.60254; 0.79980;,
3.16211; 0.41113;,
2.75000; 0.47900;,
2.75000; 0.47900;,
0.00000; 0.28857;,
2.74219; 0.68896;,
3.07227; 0.79980;,
0.00000; 0.28857;,
2.75000; 0.47900;,
0.00000; 0.00000;,
3.00000; 0.00000;,
3.07227; 1.00000;,
0.00000; 1.00000;,
3.07227; 0.79980;,
0.00000; 0.28857;,
2.00000; 0.50000;,
2.00000; 1.00000;,
0.00000; 1.00000;,
1.00000; 0.50000;,
-7.27051; 0.00000;,
1.00000; 0.00000;,
4.00000; 0.50000;,
4.00000; 1.00000;,
0.00000; 0.50000;,
0.00000; 0.50000;,
4.00000; 1.00000;,
0.00000; 1.00000;,
2.00000; 1.00000;,
0.00000; 0.50000;,
1.50000; 0.50000;,
3.00000; 1.00000;,
0.00000; 1.00000;,
0.00000; 0.50000;,
-0.50000; 1.00000;,
-2.50000; 1.00000;,
0.00000; 0.50000;,
-0.50000; 1.00000;,
0.00000; 0.50000;,
2.00000; 1.00000;,
2.00000; 1.00000;,
1.50000; 0.50000;,
6.00000; 1.00000;;
}

}

}

Frame frmpart40_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part40 {
344;
36.97000; -0.68000; 5.92500;,
36.61500; -0.53000; 5.56500;,
36.68000; -0.68000; 5.92500;,
36.97000; -0.68000; 5.92500;,
36.68000; -0.68000; 5.92500;,
36.97000; -0.94000; 6.11000;,
36.97000; -0.64500; 5.23000;,
36.97000; -0.93000; 5.00500;,
36.71500; -0.64500; 5.23000;,
36.97000; -0.53000; 5.56500;,
36.97000; -0.64500; 5.23000;,
36.71500; -0.64500; 5.23000;,
36.97000; -0.53000; 5.56500;,
36.61500; -0.53000; 5.56500;,
33.57500; -1.32500; 0.88500;,
33.84000; -1.53000; 0.83000;,
33.33500; -1.51500; 0.52500;,
33.92000; -1.29500; 0.98500;,
34.06500; -1.46500; 0.53000;,
33.84000; -1.53000; 0.83000;,
33.44500; -0.90500; 1.35000;,
33.44000; -1.57500; 0.95000;,
33.40500; -1.36500; 1.25000;,
33.57500; -1.32500; 0.88500;,
33.33500; -1.51500; 0.52500;,
33.44000; -1.57500; 0.95000;,
33.40500; -1.36500; 1.25000;,
33.00500; -1.57500; 1.41500;,
33.57500; -1.58000; 1.36500;,
33.40500; -1.36500; 1.25000;,
33.44000; -1.57500; 0.95000;,
33.00500; -1.57500; 1.41500;,
33.85000; -1.18000; 1.49000;,
33.57500; -1.58000; 1.36500;,
33.84000; -1.43000; 1.61500;,
33.40500; -1.36500; 1.25000;,
33.57500; -1.58000; 1.36500;,
33.44500; -0.90500; 1.35000;,
33.92000; -1.29500; 0.98500;,
33.84000; -1.53000; 0.83000;,
33.57500; -1.32500; 0.88500;,
33.84000; -1.43000; 1.61500;,
33.57500; -1.58000; 1.36500;,
33.82000; -1.58000; 1.95000;,
33.44500; -0.90500; 1.35000;,
33.57500; -1.58000; 1.36500;,
33.85000; -1.18000; 1.49000;,
33.44000; -1.57500; 0.95000;,
33.44500; -0.90500; 1.35000;,
33.57500; -1.32500; 0.88500;,
33.35500; 0.01000; 1.32500;,
33.87000; -0.74000; 1.16000;,
33.57500; -1.32500; 0.88500;,
33.35500; 0.01000; 1.32500;,
33.61000; 0.14000; 1.36500;,
33.87000; -0.74000; 1.16000;,
33.57500; -1.32500; 0.88500;,
33.87000; -0.74000; 1.16000;,
33.92000; -1.29500; 0.98500;,
33.35500; 0.01000; 1.32500;,
33.57500; -1.32500; 0.88500;,
33.44500; -0.90500; 1.35000;,
33.31000; -0.25500; 1.51500;,
33.44500; -0.90500; 1.35000;,
33.56500; -0.02000; 1.65000;,
33.31000; -0.25500; 1.51500;,
33.35500; 0.01000; 1.32500;,
33.44500; -0.90500; 1.35000;,
33.44500; -0.90500; 1.35000;,
33.84500; -0.92000; 1.51500;,
33.56500; -0.02000; 1.65000;,
33.44500; -0.90500; 1.35000;,
33.85000; -1.18000; 1.49000;,
33.84500; -0.92000; 1.51500;,
33.87000; -0.74000; 1.16000;,
33.61000; 0.14000; 1.36500;,
33.84500; -0.92000; 1.51500;,
33.56500; -0.02000; 1.65000;,
33.84500; -0.92000; 1.51500;,
33.61000; 0.14000; 1.36500;,
33.31000; -0.25500; 1.51500;,
32.58500; 0.16500; 1.78000;,
33.35500; 0.01000; 1.32500;,
32.65000; 0.04000; 1.85000;,
31.82500; 0.14000; 1.81500;,
32.58500; 0.16500; 1.78000;,
32.56000; 0.21000; 1.91000;,
31.82500; 0.14000; 1.81500;,
32.65000; 0.04000; 1.85000;,
32.65000; 0.04000; 1.85000;,
32.58500; 0.16500; 1.78000;,
33.31000; -0.25500; 1.51500;,
32.74000; 0.19500; 1.93500;,
32.65000; 0.04000; 1.85000;,
33.56500; -0.02000; 1.65000;,
33.56500; -0.02000; 1.65000;,
32.65000; 0.04000; 1.85000;,
33.31000; -0.25500; 1.51500;,
32.56000; 0.14500; 2.38000;,
32.56000; 0.21000; 1.91000;,
32.65000; 0.04000; 1.85000;,
32.48500; 0.21500; 2.39000;,
32.56000; 0.14500; 2.38000;,
32.26500; 0.05500; 3.06000;,
32.48500; 0.21500; 2.39000;,
32.56000; 0.21000; 1.91000;,
32.56000; 0.14500; 2.38000;,
32.56000; 0.14500; 2.38000;,
32.65000; 0.04000; 1.85000;,
32.62500; 0.19000; 2.40500;,
32.62500; 0.19000; 2.40500;,
32.65000; 0.04000; 1.85000;,
32.74000; 0.19500; 1.93500;,
32.75000; -0.32000; 5.46500;,
32.76000; -0.40000; 5.50500;,
32.37500; -0.22000; 5.59000;,
32.56000; 0.14500; 2.38000;,
32.62500; 0.19000; 2.40500;,
32.26500; 0.05500; 3.06000;,
33.12000; -0.42000; 5.33500;,
32.76000; -0.40000; 5.50500;,
33.09500; -0.33000; 5.27000;,
33.09500; -0.33000; 5.27000;,
32.76000; -0.40000; 5.50500;,
32.75000; -0.32000; 5.46500;,
33.12000; -0.42000; 5.33500;,
32.77500; -0.32000; 5.55000;,
32.76000; -0.40000; 5.50500;,
32.76000; -0.40000; 5.50500;,
32.77500; -0.32000; 5.55000;,
32.37500; -0.22000; 5.59000;,
33.62500; -0.57500; 4.89000;,
33.12000; -0.42000; 5.33500;,
33.43000; -0.77000; 4.92000;,
33.08500; -0.31000; 5.40000;,
32.77500; -0.32000; 5.55000;,
33.12000; -0.42000; 5.33500;,
33.22000; -0.12000; 6.14500;,
33.08500; -0.31000; 5.40000;,
33.12000; -0.42000; 5.33500;,
33.20500; -0.29000; 5.36500;,
33.12000; -0.42000; 5.33500;,
33.62500; -0.57500; 4.89000;,
33.12000; -0.42000; 5.33500;,
33.09500; -0.33000; 5.27000;,
33.43000; -0.77000; 4.92000;,
33.43000; -0.77000; 4.92000;,
33.09500; -0.33000; 5.27000;,
33.42000; -0.58000; 4.75500;,
33.84500; -0.92000; 4.87000;,
33.93500; -1.58000; 4.57500;,
33.67000; -0.82500; 4.56000;,
33.22000; -0.12000; 6.14500;,
33.12000; -0.42000; 5.33500;,
33.20500; -0.29000; 5.36500;,
33.78500; -0.23500; 4.89000;,
33.84500; -0.92000; 4.87000;,
33.64500; -0.09500; 4.63500;,
33.67000; -0.82500; 4.56000;,
33.64500; -0.09500; 4.63500;,
33.84500; -0.92000; 4.87000;,
33.40500; -1.04000; 4.89500;,
33.81500; -1.18000; 4.85500;,
33.84500; -0.92000; 4.87000;,
33.40500; -1.04000; 4.89500;,
33.84500; -0.92000; 4.87000;,
33.78500; -0.23500; 4.89000;,
33.48500; -0.23000; 4.97500;,
33.44000; -0.21000; 4.71500;,
33.40500; -1.04000; 4.89500;,
33.48500; -0.23000; 4.97500;,
33.40500; -1.04000; 4.89500;,
33.78500; -0.23500; 4.89000;,
33.44000; -0.21000; 4.71500;,
33.36000; -1.37000; 4.48000;,
33.40500; -1.04000; 4.89500;,
33.36000; -1.37000; 4.48000;,
33.67000; -0.82500; 4.56000;,
33.68000; -1.29500; 4.38500;,
33.44000; -0.21000; 4.71500;,
33.64500; -0.09500; 4.63500;,
33.67000; -0.82500; 4.56000;,
33.44000; -0.21000; 4.71500;,
33.67000; -0.82500; 4.56000;,
33.36000; -1.37000; 4.48000;,
33.40500; -1.04000; 4.89500;,
33.62500; -1.58000; 4.89000;,
33.81500; -1.18000; 4.85500;,
33.81500; -1.18000; 4.85500;,
33.93500; -1.58000; 4.57500;,
33.84500; -0.92000; 4.87000;,
33.68000; -1.29500; 4.38500;,
33.50000; -1.58000; 4.36000;,
33.36000; -1.37000; 4.48000;,
33.25000; -1.58000; 4.67500;,
33.40500; -1.04000; 4.89500;,
33.36000; -1.37000; 4.48000;,
33.95500; -1.47500; 4.92500;,
34.09000; -1.58000; 5.14500;,
33.93500; -1.58000; 4.57500;,
33.95500; -1.47500; 4.92500;,
33.93500; -1.58000; 4.57500;,
33.81500; -1.18000; 4.85500;,
33.81500; -1.18000; 4.85500;,
33.62500; -1.58000; 4.89000;,
33.95500; -1.47500; 4.92500;,
33.95500; -1.47500; 4.92500;,
33.62500; -1.58000; 4.89000;,
34.09000; -1.58000; 5.14500;,
33.35500; -1.37500; 4.94000;,
33.09500; -1.58000; 5.28000;,
33.62500; -1.58000; 4.89000;,
33.35500; -1.37500; 4.94000;,
33.62500; -1.58000; 4.89000;,
33.40500; -1.04000; 4.89500;,
33.40500; -1.04000; 4.89500;,
33.25000; -1.58000; 4.67500;,
33.35500; -1.37500; 4.94000;,
33.35500; -1.37500; 4.94000;,
33.25000; -1.58000; 4.67500;,
33.09500; -1.58000; 5.28000;,
33.36000; -1.37000; 4.48000;,
33.50000; -1.58000; 4.36000;,
33.04000; -1.58000; 4.31500;,
33.36000; -1.37000; 4.48000;,
33.04000; -1.58000; 4.31500;,
33.25000; -1.58000; 4.67500;,
32.52000; -0.32000; 1.46000;,
32.50000; -0.40000; 1.42500;,
32.85000; -0.22000; 1.24000;,
33.68000; -1.29500; 4.38500;,
33.70500; -1.58000; 3.93000;,
33.50000; -1.58000; 4.36000;,
32.19500; -0.42000; 1.68000;,
32.50000; -0.40000; 1.42500;,
32.24000; -0.33000; 1.73500;,
32.24000; -0.33000; 1.73500;,
32.50000; -0.40000; 1.42500;,
32.52000; -0.32000; 1.46000;,
32.19500; -0.42000; 1.68000;,
32.47500; -0.32000; 1.38500;,
32.50000; -0.40000; 1.42500;,
32.50000; -0.40000; 1.42500;,
32.47500; -0.32000; 1.38500;,
32.85000; -0.22000; 1.24000;,
31.82500; -0.57500; 2.24000;,
32.19500; -0.42000; 1.68000;,
32.00500; -0.77000; 2.16000;,
32.21500; -0.31000; 1.61000;,
32.47500; -0.32000; 1.38500;,
32.19500; -0.42000; 1.68000;,
31.89000; -0.12000; 0.92500;,
32.21500; -0.31000; 1.61000;,
32.19500; -0.42000; 1.68000;,
32.10500; -0.29000; 1.67000;,
32.19500; -0.42000; 1.68000;,
31.82500; -0.57500; 2.24000;,
32.19500; -0.42000; 1.68000;,
32.24000; -0.33000; 1.73500;,
32.00500; -0.77000; 2.16000;,
32.00500; -0.77000; 2.16000;,
32.24000; -0.33000; 1.73500;,
32.05500; -0.58000; 2.31500;,
31.89000; -0.12000; 0.92500;,
32.19500; -0.42000; 1.68000;,
32.10500; -0.29000; 1.67000;,
31.87000; -0.82500; 2.57000;,
31.87000; -0.09500; 2.49500;,
31.61500; -0.92000; 2.31500;,
31.61500; -0.92000; 2.31500;,
31.66500; -1.60000; 2.67500;,
31.87000; -0.82500; 2.57000;,
32.03500; -1.04000; 2.18000;,
31.61500; -0.92000; 2.31500;,
31.67000; -0.23500; 2.28000;,
31.67000; -0.23500; 2.28000;,
31.61500; -0.92000; 2.31500;,
31.87000; -0.09500; 2.49500;,
31.94000; -0.23000; 2.12000;,
32.03500; -1.04000; 2.18000;,
31.67000; -0.23500; 2.28000;,
32.03500; -1.04000; 2.18000;,
31.65000; -1.18000; 2.32500;,
31.61500; -0.92000; 2.31500;,
32.18500; -1.37000; 2.56500;,
31.87000; -0.82500; 2.57000;,
31.90000; -1.29500; 2.74000;,
31.94000; -0.23000; 2.12000;,
32.05000; -0.21000; 2.36500;,
32.03500; -1.04000; 2.18000;,
32.05000; -0.21000; 2.36500;,
31.87000; -0.82500; 2.57000;,
32.18500; -1.37000; 2.56500;,
32.05000; -0.21000; 2.36500;,
32.18500; -1.37000; 2.56500;,
32.03500; -1.04000; 2.18000;,
31.65000; -1.18000; 2.32500;,
31.66500; -1.60000; 2.67500;,
31.61500; -0.92000; 2.31500;,
32.05000; -0.21000; 2.36500;,
31.87000; -0.09500; 2.49500;,
31.87000; -0.82500; 2.57000;,
32.24000; -1.58000; 2.31000;,
32.03500; -1.04000; 2.18000;,
32.18500; -1.37000; 2.56500;,
32.03500; -1.04000; 2.18000;,
31.82500; -1.57500; 2.24000;,
31.65000; -1.18000; 2.32500;,
31.57000; -1.43000; 2.27500;,
31.66500; -1.60000; 2.67500;,
31.65000; -1.18000; 2.32500;,
31.90000; -1.29500; 2.74000;,
32.08000; -1.58000; 2.72000;,
32.18500; -1.37000; 2.56500;,
31.57000; -1.43000; 2.27500;,
31.82500; -1.57500; 2.24000;,
31.27000; -1.57000; 2.04500;,
31.57000; -1.43000; 2.27500;,
31.27000; -1.57000; 2.04500;,
31.66500; -1.60000; 2.67500;,
32.07000; -1.37500; 2.12000;,
31.82500; -1.57500; 2.24000;,
32.03500; -1.04000; 2.18000;,
31.65000; -1.18000; 2.32500;,
31.82500; -1.57500; 2.24000;,
31.57000; -1.43000; 2.27500;,
32.07000; -1.37500; 2.12000;,
32.24000; -1.58000; 2.31000;,
32.23500; -1.57500; 1.73000;,
32.07000; -1.37500; 2.12000;,
32.23500; -1.57500; 1.73000;,
31.82500; -1.57500; 2.24000;,
32.18500; -1.37000; 2.56500;,
32.54000; -1.58000; 2.64500;,
32.24000; -1.58000; 2.31000;,
32.03500; -1.04000; 2.18000;,
32.24000; -1.58000; 2.31000;,
32.07000; -1.37500; 2.12000;,
31.90000; -1.29500; 2.74000;,
31.98000; -1.58000; 3.18500;,
32.08000; -1.58000; 2.72000;,
32.18500; -1.37000; 2.56500;,
32.08000; -1.58000; 2.72000;,
32.54000; -1.58000; 2.64500;;

116;
3; 2, 1, 0;,
3; 5, 4, 3;,
3; 8, 7, 6;,
3; 0, 1, 9;,
3; 12, 11, 10;,
3; 13, 11, 12;,
3; 16, 15, 14;,
3; 19, 18, 17;,
3; 22, 21, 20;,
3; 25, 24, 23;,
3; 28, 27, 26;,
3; 31, 30, 29;,
3; 34, 33, 32;,
3; 37, 36, 35;,
3; 40, 39, 38;,
3; 43, 42, 41;,
3; 46, 45, 44;,
3; 49, 48, 47;,
3; 52, 51, 50;,
3; 55, 54, 53;,
3; 58, 57, 56;,
3; 61, 60, 59;,
3; 64, 63, 62;,
3; 67, 66, 65;,
3; 70, 69, 68;,
3; 73, 72, 71;,
3; 76, 75, 74;,
3; 79, 78, 77;,
3; 82, 81, 80;,
3; 85, 84, 83;,
3; 88, 87, 86;,
3; 91, 90, 89;,
3; 94, 93, 92;,
3; 97, 96, 95;,
3; 100, 99, 98;,
3; 103, 102, 101;,
3; 106, 105, 104;,
3; 109, 108, 107;,
3; 112, 111, 110;,
3; 115, 114, 113;,
3; 118, 117, 116;,
3; 121, 120, 119;,
3; 124, 123, 122;,
3; 127, 126, 125;,
3; 130, 129, 128;,
3; 133, 132, 131;,
3; 136, 135, 134;,
3; 139, 138, 137;,
3; 142, 141, 140;,
3; 145, 144, 143;,
3; 148, 147, 146;,
3; 151, 150, 149;,
3; 154, 153, 152;,
3; 157, 156, 155;,
3; 160, 159, 158;,
3; 163, 162, 161;,
3; 166, 165, 164;,
3; 169, 168, 167;,
3; 172, 171, 170;,
3; 175, 174, 173;,
3; 178, 177, 176;,
3; 181, 180, 179;,
3; 184, 183, 182;,
3; 187, 186, 185;,
3; 190, 189, 188;,
3; 193, 192, 191;,
3; 196, 195, 194;,
3; 199, 198, 197;,
3; 202, 201, 200;,
3; 205, 204, 203;,
3; 208, 207, 206;,
3; 211, 210, 209;,
3; 214, 213, 212;,
3; 217, 216, 215;,
3; 220, 219, 218;,
3; 223, 222, 221;,
3; 226, 225, 224;,
3; 229, 228, 227;,
3; 232, 231, 230;,
3; 235, 234, 233;,
3; 238, 237, 236;,
3; 241, 240, 239;,
3; 244, 243, 242;,
3; 247, 246, 245;,
3; 250, 249, 248;,
3; 253, 252, 251;,
3; 256, 255, 254;,
3; 259, 258, 257;,
3; 262, 261, 260;,
3; 265, 264, 263;,
3; 268, 267, 266;,
3; 271, 270, 269;,
3; 274, 273, 272;,
3; 277, 276, 275;,
3; 280, 279, 278;,
3; 283, 282, 281;,
3; 286, 285, 284;,
3; 289, 288, 287;,
3; 292, 291, 290;,
3; 295, 294, 293;,
3; 298, 297, 296;,
3; 301, 300, 299;,
3; 304, 303, 302;,
3; 307, 306, 305;,
3; 310, 309, 308;,
3; 313, 312, 311;,
3; 316, 315, 314;,
3; 319, 318, 317;,
3; 322, 321, 320;,
3; 325, 324, 323;,
3; 328, 327, 326;,
3; 331, 330, 329;,
3; 334, 333, 332;,
3; 337, 336, 335;,
3; 340, 339, 338;,
3; 343, 342, 341;;

MeshMaterialList {
1;
116;
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0;
Material mat40 {
  0.687500; 0.687500; 0.687500; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "BC144FF_c.bmp";
  }
  DiffuseTextureFileName  {
     "BC144FF_c.bmp";
  }
  FS10Material {
    0.687500; 0.687500; 0.687500; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "BC144FF_c.bmp";
    }
  }
}
}

MeshNormals {
344;
0.00000; 0.92308; 0.38461;,
0.00000; 0.92308; 0.38461;,
0.00000; 0.92308; 0.38461;,
0.00000; 0.57975; 0.81479;,
0.00000; 0.57975; 0.81479;,
0.00000; 0.57975; 0.81479;,
0.00000; 0.61964; -0.78488;,
0.00000; 0.61964; -0.78488;,
0.00000; 0.61964; -0.78488;,
0.00000; 0.92308; 0.38461;,
0.00000; 0.94582; -0.32469;,
0.00000; 0.94582; -0.32469;,
0.00000; 0.94582; -0.32469;,
0.00000; 0.94582; -0.32469;,
0.39503; 0.67720; -0.62077;,
0.39503; 0.67720; -0.62077;,
0.39503; 0.67720; -0.62077;,
-0.72856; 0.53233; -0.43107;,
-0.72856; 0.53233; -0.43107;,
-0.72856; 0.53233; -0.43107;,
-0.97064; 0.12859; -0.20326;,
-0.97064; 0.12859; -0.20326;,
-0.97064; 0.12859; -0.20326;,
-0.81484; 0.51112; 0.27347;,
-0.81484; 0.51112; 0.27347;,
-0.81484; 0.51112; 0.27347;,
0.07924; 0.51817; 0.85160;,
0.07924; 0.51817; 0.85160;,
0.07924; 0.51817; 0.85160;,
-0.55526; 0.64951; -0.51944;,
-0.55526; 0.64951; -0.51944;,
-0.55526; 0.64951; -0.51944;,
-0.73975; 0.32435; 0.58954;,
-0.73975; 0.32435; 0.58954;,
-0.73975; 0.32435; 0.58954;,
-0.64699; -0.10783; 0.75483;,
-0.64699; -0.10783; 0.75483;,
-0.64699; -0.10783; 0.75483;,
0.20311; 0.49000; -0.84773;,
0.20311; 0.49000; -0.84773;,
0.20311; 0.49000; -0.84773;,
-0.65689; 0.70201; 0.27511;,
-0.65689; 0.70201; 0.27511;,
-0.65689; 0.70201; 0.27511;,
-0.35508; -0.04764; 0.93362;,
-0.35508; -0.04764; 0.93362;,
-0.35508; -0.04764; 0.93362;,
-0.80862; 0.30602; -0.50247;,
-0.80862; 0.30602; -0.50247;,
-0.80862; 0.30602; -0.50247;,
0.19358; 0.33573; -0.92185;,
0.19358; 0.33573; -0.92185;,
0.19358; 0.33573; -0.92185;,
0.03216; 0.23577; -0.97128;,
0.03216; 0.23577; -0.97128;,
0.03216; 0.23577; -0.97128;,
0.23945; 0.31153; -0.91957;,
0.23945; 0.31153; -0.91957;,
0.23945; 0.31153; -0.91957;,
-0.97807; -0.10117; -0.18206;,
-0.97807; -0.10117; -0.18206;,
-0.97807; -0.10117; -0.18206;,
-0.23080; -0.28416; 0.93058;,
-0.23080; -0.28416; 0.93058;,
-0.23080; -0.28416; 0.93058;,
-0.92724; -0.10105; -0.36058;,
-0.92724; -0.10105; -0.36058;,
-0.92724; -0.10105; -0.36058;,
-0.37715; -0.25106; 0.89148;,
-0.37715; -0.25106; 0.89148;,
-0.37715; -0.25106; 0.89148;,
-0.38264; -0.09571; 0.91893;,
-0.38264; -0.09571; 0.91893;,
-0.38264; -0.09571; 0.91893;,
0.95299; 0.23784; 0.18771;,
0.95299; 0.23784; 0.18771;,
0.95299; 0.23784; 0.18771;,
0.92674; 0.24568; 0.28425;,
0.92674; 0.24568; 0.28425;,
0.92674; 0.24568; 0.28425;,
-0.52115; -0.43708; -0.73306;,
-0.52115; -0.43708; -0.73306;,
-0.52115; -0.43708; -0.73306;,
-0.02356; -0.49778; -0.86698;,
-0.02356; -0.49778; -0.86698;,
-0.02356; -0.49778; -0.86698;,
-0.08420; -0.37097; 0.92482;,
-0.08420; -0.37097; 0.92482;,
-0.08420; -0.37097; 0.92482;,
-0.55835; -0.60702; -0.56549;,
-0.55835; -0.60702; -0.56549;,
-0.55835; -0.60702; -0.56549;,
0.14589; -0.53947; 0.82927;,
0.14589; -0.53947; 0.82927;,
0.14589; -0.53947; 0.82927;,
0.13341; -0.59855; 0.78990;,
0.13341; -0.59855; 0.78990;,
0.13341; -0.59855; 0.78990;,
-0.89099; -0.44974; -0.06220;,
-0.89099; -0.44974; -0.06220;,
-0.89099; -0.44974; -0.06220;,
-0.65928; -0.65317; -0.37246;,
-0.65928; -0.65317; -0.37246;,
-0.65928; -0.65317; -0.37246;,
-0.68599; -0.72075; -0.09968;,
-0.68599; -0.72075; -0.09968;,
-0.68599; -0.72075; -0.09968;,
0.48493; -0.83851; 0.24846;,
0.48493; -0.83851; 0.24846;,
0.48493; -0.83851; 0.24846;,
0.80030; -0.56878; 0.18976;,
0.80030; -0.56878; 0.18976;,
0.80030; -0.56878; 0.18976;,
-0.38813; -0.45049; -0.80400;,
-0.38813; -0.45049; -0.80400;,
-0.38813; -0.45049; -0.80400;,
0.53329; -0.83730; 0.12054;,
0.53329; -0.83730; 0.12054;,
0.53329; -0.83730; 0.12054;,
-0.36594; -0.60956; -0.70322;,
-0.36594; -0.60956; -0.70322;,
-0.36594; -0.60956; -0.70322;,
-0.45070; -0.44364; -0.77463;,
-0.45070; -0.44364; -0.77463;,
-0.45070; -0.44364; -0.77463;,
0.34440; -0.50852; 0.78917;,
0.34440; -0.50852; 0.78917;,
0.34440; -0.50852; 0.78917;,
-0.03392; -0.48517; 0.87376;,
-0.03392; -0.48517; 0.87376;,
-0.03392; -0.48517; 0.87376;,
0.52738; -0.41317; 0.74240;,
0.52738; -0.41317; 0.74240;,
0.52738; -0.41317; 0.74240;,
0.41560; -0.36104; 0.83482;,
0.41560; -0.36104; 0.83482;,
0.41560; -0.36104; 0.83482;,
-0.86190; -0.43156; 0.26624;,
-0.86190; -0.43156; 0.26624;,
-0.86190; -0.43156; 0.26624;,
0.48873; -0.48662; 0.72412;,
0.48873; -0.48662; 0.72412;,
0.48873; -0.48662; 0.72412;,
-0.85765; -0.43562; -0.27326;,
-0.85765; -0.43562; -0.27326;,
-0.85765; -0.43562; -0.27326;,
-0.85750; -0.36233; -0.36525;,
-0.85750; -0.36233; -0.36525;,
-0.85750; -0.36233; -0.36525;,
0.86768; 0.29662; -0.39892;,
0.86768; 0.29662; -0.39892;,
0.86768; 0.29662; -0.39892;,
0.82078; -0.56122; 0.10653;,
0.82078; -0.56122; 0.10653;,
0.82078; -0.56122; 0.10653;,
0.89319; 0.09110; -0.44036;,
0.89319; 0.09110; -0.44036;,
0.89319; 0.09110; -0.44036;,
0.87825; 0.07854; -0.47172;,
0.87825; 0.07854; -0.47172;,
0.87825; 0.07854; -0.47172;,
0.07454; -0.06601; 0.99503;,
0.07454; -0.06601; 0.99503;,
0.07454; -0.06601; 0.99503;,
0.06313; -0.02361; 0.99773;,
0.06313; -0.02361; 0.99773;,
0.06313; -0.02361; 0.99773;,
-0.98118; 0.07953; 0.17595;,
-0.98118; 0.07953; 0.17595;,
-0.98118; 0.07953; 0.17595;,
0.26873; -0.12092; 0.95560;,
0.26873; -0.12092; 0.95560;,
0.26873; -0.12092; 0.95560;,
-0.99641; 0.05582; 0.06365;,
-0.99641; 0.05582; 0.06365;,
-0.99641; 0.05582; 0.06365;,
-0.33802; 0.32208; -0.88431;,
-0.33802; 0.32208; -0.88431;,
-0.33802; 0.32208; -0.88431;,
-0.40101; 0.08002; -0.91257;,
-0.40101; 0.08002; -0.91257;,
-0.40101; 0.08002; -0.91257;,
-0.10858; 0.20457; -0.97281;,
-0.10858; 0.20457; -0.97281;,
-0.10858; 0.20457; -0.97281;,
0.10894; 0.03519; 0.99343;,
0.10894; 0.03519; 0.99343;,
0.10894; 0.03519; 0.99343;,
0.83289; -0.12718; 0.53863;,
0.83289; -0.12718; 0.53863;,
0.83289; -0.12718; 0.53863;,
-0.33417; 0.28973; -0.89688;,
-0.33417; 0.28973; -0.89688;,
-0.33417; 0.28973; -0.89688;,
-0.92830; 0.33347; -0.16451;,
-0.92830; 0.33347; -0.16451;,
-0.92830; 0.33347; -0.16451;,
0.79392; 0.56840; -0.21589;,
0.79392; 0.56840; -0.21589;,
0.79392; 0.56840; -0.21589;,
0.90539; 0.38966; -0.16864;,
0.90539; 0.38966; -0.16864;,
0.90539; 0.38966; -0.16864;,
-0.15385; 0.15843; 0.97531;,
-0.15385; 0.15843; 0.97531;,
-0.15385; 0.15843; 0.97531;,
-0.30497; 0.77312; 0.55613;,
-0.30497; 0.77312; 0.55613;,
-0.30497; 0.77312; 0.55613;,
0.51176; 0.50440; 0.69547;,
0.51176; 0.50440; 0.69547;,
0.51176; 0.50440; 0.69547;,
0.24869; 0.09240; 0.96417;,
0.24869; 0.09240; 0.96417;,
0.24869; 0.09240; 0.96417;,
-0.95419; 0.17500; 0.24269;,
-0.95419; 0.17500; 0.24269;,
-0.95419; 0.17500; 0.24269;,
-0.75018; 0.63268; -0.19220;,
-0.75018; 0.63268; -0.19220;,
-0.75018; 0.63268; -0.19220;,
0.08224; 0.53523; -0.84069;,
0.08224; 0.53523; -0.84069;,
0.08224; 0.53523; -0.84069;,
-0.63558; 0.67719; 0.37075;,
-0.63558; 0.67719; 0.37075;,
-0.63558; 0.67719; 0.37075;,
0.58635; -0.44321; 0.67806;,
0.58635; -0.44321; 0.67806;,
0.58635; -0.44321; 0.67806;,
-0.77134; 0.51942; -0.36774;,
-0.77134; 0.51942; -0.36774;,
-0.77134; 0.51942; -0.36774;,
0.52716; -0.61922; 0.58196;,
0.52716; -0.61922; 0.58196;,
0.52716; -0.61922; 0.58196;,
0.63820; -0.43686; 0.63392;,
0.63820; -0.43686; 0.63392;,
0.63820; -0.43686; 0.63392;,
-0.53359; -0.50572; -0.67789;,
-0.53359; -0.50572; -0.67789;,
-0.53359; -0.50572; -0.67789;,
-0.19883; -0.48731; -0.85029;,
-0.19883; -0.48731; -0.85029;,
-0.19883; -0.48731; -0.85029;,
-0.70363; -0.41200; -0.57893;,
-0.70363; -0.41200; -0.57893;,
-0.70363; -0.41200; -0.57893;,
-0.62374; -0.33576; -0.70584;,
-0.62374; -0.33576; -0.70584;,
-0.62374; -0.33576; -0.70584;,
0.75564; -0.44388; -0.48164;,
0.75564; -0.44388; -0.48164;,
0.75564; -0.44388; -0.48164;,
-0.65443; -0.49689; -0.56993;,
-0.65443; -0.49689; -0.56993;,
-0.65443; -0.49689; -0.56993;,
0.88952; -0.45650; 0.01924;,
0.88952; -0.45650; 0.01924;,
0.88952; -0.45650; 0.01924;,
0.92330; -0.35751; 0.14040;,
0.92330; -0.35751; 0.14040;,
0.92330; -0.35751; 0.14040;,
-0.82120; -0.56010; 0.10918;,
-0.82120; -0.56010; 0.10918;,
-0.82120; -0.56010; 0.10918;,
-0.71843; 0.07109; 0.69196;,
-0.71843; 0.07109; 0.69196;,
-0.71843; 0.07109; 0.69196;,
-0.72905; 0.27761; 0.62564;,
-0.72905; 0.27761; 0.62564;,
-0.72905; 0.27761; 0.62564;,
-0.31200; -0.02348; -0.94979;,
-0.31200; -0.02348; -0.94979;,
-0.31200; -0.02348; -0.94979;,
-0.75869; 0.09386; 0.64465;,
-0.75869; 0.09386; 0.64465;,
-0.75869; 0.09386; 0.64465;,
-0.50429; -0.12247; -0.85481;,
-0.50429; -0.12247; -0.85481;,
-0.50429; -0.12247; -0.85481;,
-0.32569; -0.08007; -0.94208;,
-0.32569; -0.08007; -0.94208;,
-0.32569; -0.08007; -0.94208;,
0.55544; 0.31397; 0.77001;,
0.55544; 0.31397; 0.77001;,
0.55544; 0.31397; 0.77001;,
0.90732; 0.07578; -0.41355;,
0.90732; 0.07578; -0.41355;,
0.90732; 0.07578; -0.41355;,
0.35876; 0.19899; 0.91197;,
0.35876; 0.19899; 0.91197;,
0.35876; 0.19899; 0.91197;,
0.94533; 0.05458; -0.32152;,
0.94533; 0.05458; -0.32152;,
0.94533; 0.05458; -0.32152;,
-0.98299; -0.13703; -0.12230;,
-0.98299; -0.13703; -0.12230;,
-0.98299; -0.13703; -0.12230;,
0.61687; 0.08044; 0.78295;,
0.61687; 0.08044; 0.78295;,
0.61687; 0.08044; 0.78295;,
0.93813; 0.33786; -0.07591;,
0.93813; 0.33786; -0.07591;,
0.93813; 0.33786; -0.07591;,
-0.36449; 0.03873; -0.93040;,
-0.36449; 0.03873; -0.93040;,
-0.36449; 0.03873; -0.93040;,
-0.91996; 0.23105; 0.31669;,
-0.91996; 0.23105; 0.31669;,
-0.91996; 0.23105; 0.31669;,
0.55518; 0.29609; 0.77724;,
0.55518; 0.29609; 0.77724;,
0.55518; 0.29609; 0.77724;,
0.26119; 0.63487; -0.72713;,
0.26119; 0.63487; -0.72713;,
0.26119; 0.63487; -0.72713;,
-0.62965; 0.64984; 0.42573;,
-0.62965; 0.64984; 0.42573;,
-0.62965; 0.64984; 0.42573;,
-0.50299; 0.10118; -0.85835;,
-0.50299; 0.10118; -0.85835;,
-0.50299; 0.10118; -0.85835;,
-0.01951; 0.20207; -0.97918;,
-0.01951; 0.20207; -0.97918;,
-0.01951; 0.20207; -0.97918;,
0.77029; 0.63770; -0.00114;,
0.77029; 0.63770; -0.00114;,
0.77029; 0.63770; -0.00114;,
-0.67453; 0.50095; -0.54227;,
-0.67453; 0.50095; -0.54227;,
-0.67453; 0.50095; -0.54227;,
0.52540; 0.70893; -0.47051;,
0.52540; 0.70893; -0.47051;,
0.52540; 0.70893; -0.47051;,
0.82236; 0.18244; -0.53892;,
0.82236; 0.18244; -0.53892;,
0.82236; 0.18244; -0.53892;,
0.83732; 0.51620; 0.18007;,
0.83732; 0.51620; 0.18007;,
0.83732; 0.51620; 0.18007;,
0.13504; 0.54382; 0.82827;,
0.13504; 0.54382; 0.82827;,
0.13504; 0.54382; 0.82827;;

116;
3; 2, 1, 0;,
3; 5, 4, 3;,
3; 8, 7, 6;,
3; 0, 1, 9;,
3; 12, 11, 10;,
3; 13, 11, 12;,
3; 16, 15, 14;,
3; 19, 18, 17;,
3; 22, 21, 20;,
3; 25, 24, 23;,
3; 28, 27, 26;,
3; 31, 30, 29;,
3; 34, 33, 32;,
3; 37, 36, 35;,
3; 40, 39, 38;,
3; 43, 42, 41;,
3; 46, 45, 44;,
3; 49, 48, 47;,
3; 52, 51, 50;,
3; 55, 54, 53;,
3; 58, 57, 56;,
3; 61, 60, 59;,
3; 64, 63, 62;,
3; 67, 66, 65;,
3; 70, 69, 68;,
3; 73, 72, 71;,
3; 76, 75, 74;,
3; 79, 78, 77;,
3; 82, 81, 80;,
3; 85, 84, 83;,
3; 88, 87, 86;,
3; 91, 90, 89;,
3; 94, 93, 92;,
3; 97, 96, 95;,
3; 100, 99, 98;,
3; 103, 102, 101;,
3; 106, 105, 104;,
3; 109, 108, 107;,
3; 112, 111, 110;,
3; 115, 114, 113;,
3; 118, 117, 116;,
3; 121, 120, 119;,
3; 124, 123, 122;,
3; 127, 126, 125;,
3; 130, 129, 128;,
3; 133, 132, 131;,
3; 136, 135, 134;,
3; 139, 138, 137;,
3; 142, 141, 140;,
3; 145, 144, 143;,
3; 148, 147, 146;,
3; 151, 150, 149;,
3; 154, 153, 152;,
3; 157, 156, 155;,
3; 160, 159, 158;,
3; 163, 162, 161;,
3; 166, 165, 164;,
3; 169, 168, 167;,
3; 172, 171, 170;,
3; 175, 174, 173;,
3; 178, 177, 176;,
3; 181, 180, 179;,
3; 184, 183, 182;,
3; 187, 186, 185;,
3; 190, 189, 188;,
3; 193, 192, 191;,
3; 196, 195, 194;,
3; 199, 198, 197;,
3; 202, 201, 200;,
3; 205, 204, 203;,
3; 208, 207, 206;,
3; 211, 210, 209;,
3; 214, 213, 212;,
3; 217, 216, 215;,
3; 220, 219, 218;,
3; 223, 222, 221;,
3; 226, 225, 224;,
3; 229, 228, 227;,
3; 232, 231, 230;,
3; 235, 234, 233;,
3; 238, 237, 236;,
3; 241, 240, 239;,
3; 244, 243, 242;,
3; 247, 246, 245;,
3; 250, 249, 248;,
3; 253, 252, 251;,
3; 256, 255, 254;,
3; 259, 258, 257;,
3; 262, 261, 260;,
3; 265, 264, 263;,
3; 268, 267, 266;,
3; 271, 270, 269;,
3; 274, 273, 272;,
3; 277, 276, 275;,
3; 280, 279, 278;,
3; 283, 282, 281;,
3; 286, 285, 284;,
3; 289, 288, 287;,
3; 292, 291, 290;,
3; 295, 294, 293;,
3; 298, 297, 296;,
3; 301, 300, 299;,
3; 304, 303, 302;,
3; 307, 306, 305;,
3; 310, 309, 308;,
3; 313, 312, 311;,
3; 316, 315, 314;,
3; 319, 318, 317;,
3; 322, 321, 320;,
3; 325, 324, 323;,
3; 328, 327, 326;,
3; 331, 330, 329;,
3; 334, 333, 332;,
3; 337, 336, 335;,
3; 340, 339, 338;,
3; 343, 342, 341;;
}
MeshTextureCoords {
344;
2.14648; -0.36621;,
1.75879; -0.63672;,
2.14453; -0.62305;,
2.14648; -0.36621;,
2.14453; -0.62305;,
2.45215; -0.53027;,
1.41602; -0.34082;,
1.06055; -0.54590;,
1.41406; -0.58106;,
1.76856; -0.32617;,
1.41602; -0.34082;,
1.41406; -0.58106;,
1.76856; -0.32617;,
1.75879; -0.63672;,
2.32422; -0.56543;,
1.96680; -0.97266;,
2.43652; -1.14160;,
1.63672; -0.61621;,
1.80859; -1.32031;,
1.96680; -0.97266;,
3.17676; 0.21680;,
2.63965; -0.87598;,
3.05176; -0.48438;,
2.32422; -0.56543;,
2.43652; -1.14160;,
2.63965; -0.87598;,
3.05176; -0.48438;,
3.18750; -0.92578;,
3.40918; -0.83984;,
3.05176; -0.48438;,
2.63965; -0.87598;,
3.18750; -0.92578;,
4.31445; -0.30957;,
3.40918; -0.83984;,
4.10938; -0.65039;,
3.05176; -0.48438;,
3.40918; -0.83984;,
3.17676; 0.21680;,
1.63672; -0.61621;,
1.96680; -0.97266;,
2.32422; -0.56543;,
4.10938; -0.65039;,
3.40918; -0.83984;,
3.98633; -1.09570;,
3.17676; 0.21680;,
3.40918; -0.83984;,
4.31445; -0.30957;,
2.63965; -0.87598;,
3.17676; 0.21680;,
2.32422; -0.56543;,
2.49609; 1.60644;,
1.37109; 0.26856;,
2.32422; -0.56543;,
2.49609; 1.60644;,
1.25391; 1.72754;,
1.37109; 0.26856;,
2.32422; -0.56543;,
1.37109; 0.26856;,
1.63672; -0.61621;,
2.49609; 1.60644;,
2.32422; -0.56543;,
3.17676; 0.21680;,
3.37109; 1.27246;,
3.17676; 0.21680;,
4.29199; 1.56836;,
3.37109; 1.27246;,
2.49609; 1.60644;,
3.17676; 0.21680;,
3.17676; 0.21680;,
4.43652; 0.08496;,
4.29199; 1.56836;,
3.17676; 0.21680;,
4.31445; -0.30957;,
4.43652; 0.08496;,
1.37109; 0.26856;,
1.25391; 1.72754;,
0.43652; 0.08496;,
0.29199; 1.56836;,
0.43652; 0.08496;,
1.25391; 1.72754;,
1.79199; -1.14453;,
1.23633; 0.88770;,
1.03320; -1.20996;,
1.77148; 0.73242;,
1.47559; 2.39062;,
1.23633; 0.88770;,
0.79199; 1.10840;,
1.47559; 2.39062;,
1.77148; 0.73242;,
1.77148; 0.73242;,
1.23633; 0.88770;,
1.79199; -1.14453;,
2.51856; 0.75977;,
1.77148; 0.73242;,
2.51856; -1.31152;,
2.51856; -1.31152;,
1.77148; 0.73242;,
1.79199; -1.14453;,
1.01758; 1.31738;,
-0.43262; -0.04102;,
-0.20801; -0.45898;,
0.69043; 1.53906;,
1.01758; 1.31738;,
1.73633; 4.06445;,
0.69043; 1.53906;,
-0.43262; -0.04102;,
1.01758; 1.31738;,
1.01758; 1.31738;,
-0.20801; -0.45898;,
1.38086; 1.22559;,
1.38086; 1.22559;,
-0.20801; -0.45898;,
0.47754; -0.46387;,
-0.26367; 1.92383;,
-0.12598; 1.97363;,
-1.04883; 2.77148;,
1.01758; 1.31738;,
1.38086; 1.22559;,
1.73633; 4.06445;,
0.49316; 1.06934;,
-0.12598; 1.97363;,
0.25879; 1.00098;,
0.25879; 1.00098;,
-0.12598; 1.97363;,
-0.26367; 1.92383;,
0.49316; 1.06934;,
0.03320; 2.03027;,
-0.12598; 1.97363;,
-0.12598; 1.97363;,
0.03320; 2.03027;,
-1.04883; 2.77148;,
0.84473; -0.56543;,
0.49316; 1.06934;,
0.34961; -0.19141;,
0.55176; 1.24902;,
0.03320; 2.03027;,
0.49316; 1.06934;,
2.85840; 2.37109;,
0.55176; 1.24902;,
0.49316; 1.06934;,
0.83496; 0.98438;,
0.49316; 1.06934;,
0.84473; -0.56543;,
0.49316; 1.06934;,
0.25879; 1.00098;,
0.34961; -0.19141;,
0.34961; -0.19141;,
0.25879; 1.00098;,
-0.09570; -0.47559;,
0.70508; 0.23144;,
1.16211; -1.19727;,
1.75488; 0.36426;,
2.85840; 2.37109;,
0.49316; 1.06934;,
0.83496; 0.98438;,
0.84961; 1.64160;,
0.70508; 0.23144;,
1.72168; 1.87109;,
1.75488; 0.36426;,
1.72168; 1.87109;,
0.70508; 0.23144;,
3.44824; 0.05664;,
4.61426; -0.29590;,
4.70508; 0.23144;,
3.44824; 0.05664;,
4.70508; 0.23144;,
4.84961; 1.64160;,
3.72168; 1.71484;,
2.46191; 1.68848;,
3.44824; 0.05664;,
3.72168; 1.71484;,
3.44824; 0.05664;,
4.84961; 1.64160;,
2.46191; 1.68848;,
2.58691; -0.72168;,
3.44824; 0.05664;,
2.58691; -0.72168;,
1.75488; 0.36426;,
1.87988; -0.63574;,
2.46191; 1.68848;,
1.72168; 1.87109;,
1.75488; 0.36426;,
2.46191; 1.68848;,
1.75488; 0.36426;,
2.58691; -0.72168;,
3.44824; 0.05664;,
3.97852; -1.07227;,
4.61426; -0.29590;,
0.61426; -0.29590;,
1.16211; -1.19727;,
0.70508; 0.23144;,
1.87988; -0.63574;,
2.27734; -1.20020;,
2.58691; -0.72168;,
3.03320; -1.08301;,
3.44824; 0.05664;,
2.58691; -0.72168;,
0.58496; -0.89160;,
0.45703; -1.47070;,
1.16211; -1.19727;,
0.58496; -0.89160;,
1.16211; -1.19727;,
0.61426; -0.29590;,
4.61426; -0.29590;,
3.97852; -1.07227;,
4.58496; -0.89160;,
4.58496; -0.89160;,
3.97852; -1.07227;,
4.45703; -1.47070;,
3.48828; -0.61035;,
3.55371; -1.30762;,
3.97852; -1.07227;,
3.48828; -0.61035;,
3.97852; -1.07227;,
3.44824; 0.05664;,
3.44824; 0.05664;,
3.03320; -1.08301;,
3.48828; -0.61035;,
3.48828; -0.61035;,
3.03320; -1.08301;,
3.55371; -1.30762;,
2.58691; -0.72168;,
2.27734; -1.20020;,
2.70020; -1.55957;,
2.58691; -0.72168;,
2.70020; -1.55957;,
3.03320; -1.08301;,
-0.31641; 3.28027;,
-0.17773; 3.36816;,
-1.23242; 4.60547;,
1.87988; -0.63574;,
1.95215; -1.74805;,
2.27734; -1.20020;,
0.57031; 1.94434;,
-0.17773; 3.36816;,
0.33106; 1.82324;,
0.33106; 1.82324;,
-0.17773; 3.36816;,
-0.31641; 3.28027;,
0.57031; 1.94434;,
-0.01465; 3.46582;,
-0.17773; 3.36816;,
-0.17773; 3.36816;,
-0.01465; 3.46582;,
-1.23242; 4.60547;,
1.11231; -0.66504;,
0.57031; 1.94434;,
0.55273; -0.08691;,
0.61328; 2.23535;,
-0.01465; 3.46582;,
0.57031; 1.94434;,
2.92285; 4.14551;,
0.61328; 2.23535;,
0.57031; 1.94434;,
0.93945; 1.82422;,
0.57031; 1.94434;,
1.11231; -0.66504;,
0.57031; 1.94434;,
0.33106; 1.82324;,
0.55273; -0.08691;,
0.55273; -0.08691;,
0.33106; 1.82324;,
0.11328; -0.56348;,
2.92285; 4.14551;,
0.57031; 1.94434;,
0.93945; 1.82422;,
4.90430; 0.63965;,
4.86523; 1.88965;,
3.91797; 0.47656;,
3.91797; 0.47656;,
4.59473; -0.68457;,
4.90430; 0.63965;,
2.58106; 0.27637;,
3.91797; 0.47656;,
3.80566; 1.65234;,
3.80566; 1.65234;,
3.91797; 0.47656;,
4.86523; 1.88965;,
2.89746; 1.66309;,
2.58106; 0.27637;,
3.80566; 1.65234;,
2.58106; 0.27637;,
3.92773; 0.03320;,
3.91797; 0.47656;,
1.59277; -0.29004;,
0.90430; 0.63965;,
0.99707; -0.16113;,
2.89746; 1.66309;,
1.95898; 1.69629;,
2.58106; 0.27637;,
1.95898; 1.69629;,
0.90430; 0.63965;,
1.59277; -0.29004;,
1.95898; 1.69629;,
1.59277; -0.29004;,
2.58106; 0.27637;,
3.92773; 0.03320;,
4.59473; -0.68457;,
3.91797; 0.47656;,
1.95898; 1.69629;,
0.86523; 1.88965;,
0.90430; 0.63965;,
2.08594; -0.65039;,
2.58106; 0.27637;,
1.59277; -0.29004;,
2.58106; 0.27637;,
3.37598; -0.64356;,
3.92773; 0.03320;,
3.85352; -0.39160;,
4.59473; -0.68457;,
3.92773; 0.03320;,
0.99707; -0.16113;,
1.29199; -0.65039;,
1.59277; -0.29004;,
3.85352; -0.39160;,
3.37598; -0.64356;,
3.70996; -0.97559;,
3.85352; -0.39160;,
3.70996; -0.97559;,
4.59473; -0.68457;,
2.59473; -0.30078;,
3.37598; -0.64356;,
2.58106; 0.27637;,
3.92773; 0.03320;,
3.37598; -0.64356;,
3.85352; -0.39160;,
2.59473; -0.30078;,
2.08594; -0.65039;,
2.68652; -0.98242;,
2.59473; -0.30078;,
2.68652; -0.98242;,
3.37598; -0.64356;,
1.59277; -0.29004;,
1.72852; -0.99219;,
2.08594; -0.65039;,
2.58106; 0.27637;,
2.08594; -0.65039;,
2.59473; -0.30078;,
0.99707; -0.16113;,
1.06055; -0.99219;,
1.29199; -0.65039;,
1.59277; -0.29004;,
1.29199; -0.65039;,
1.72852; -0.99219;;
}

}

}

Frame frmpart41_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part41 {
93;
36.97000; -1.58000; 5.92500;,
36.97000; -1.32500; 6.09000;,
36.97000; -1.58000; 5.80000;,
36.97000; -1.29000; 5.98500;,
36.97000; -1.29000; 5.02000;,
36.97000; -1.58000; 5.16500;,
36.97000; -1.26000; 5.12500;,
36.97000; -1.58000; 5.28500;,
36.97000; -0.93000; 5.00500;,
36.97000; -0.96500; 5.10500;,
36.71500; -0.64500; 5.23000;,
36.97000; -0.93000; 5.00500;,
36.72500; -0.73500; 5.29500;,
36.72500; -0.73500; 5.29500;,
36.97000; -0.93000; 5.00500;,
36.97000; -0.96500; 5.10500;,
36.61500; -0.53000; 5.56500;,
36.71500; -0.64500; 5.23000;,
36.63000; -0.64500; 5.56000;,
36.63000; -0.64500; 5.56000;,
36.71500; -0.64500; 5.23000;,
36.72500; -0.73500; 5.29500;,
36.68000; -0.68000; 5.92500;,
36.61500; -0.53000; 5.56500;,
36.63000; -0.64500; 5.56000;,
36.68000; -0.68000; 5.92500;,
36.63000; -0.64500; 5.56000;,
36.69000; -0.76000; 5.85000;,
36.97000; -1.26000; 5.12500;,
37.69000; -1.60000; 5.18000;,
37.69000; -1.00500; 5.09500;,
36.69000; -0.76000; 5.85000;,
37.69000; -0.66000; 5.51500;,
37.69000; -1.04000; 6.02000;,
36.72500; -0.73500; 5.29500;,
37.69000; -1.00500; 5.09500;,
37.69000; -0.66000; 5.51500;,
37.69000; -1.63000; 5.79500;,
36.97000; -1.29000; 5.98500;,
37.69000; -1.04000; 6.02000;,
37.69000; -1.00500; 5.09500;,
36.72500; -0.73500; 5.29500;,
36.97000; -0.96500; 5.10500;,
37.69000; -1.00500; 5.09500;,
36.97000; -0.96500; 5.10500;,
36.97000; -1.26000; 5.12500;,
37.69000; -1.63000; 5.79500;,
36.97000; -1.58000; 5.80000;,
36.97000; -1.29000; 5.98500;,
36.97000; -1.58000; 5.28500;,
37.69000; -1.60000; 5.18000;,
36.97000; -1.26000; 5.12500;,
37.69000; -1.04000; 6.02000;,
36.97000; -0.98000; 6.01000;,
36.69000; -0.76000; 5.85000;,
37.69000; -1.04000; 6.02000;,
36.97000; -1.29000; 5.98500;,
36.97000; -0.98000; 6.01000;,
36.72500; -0.73500; 5.29500;,
37.69000; -0.66000; 5.51500;,
36.63000; -0.64500; 5.56000;,
37.69000; -0.66000; 5.51500;,
36.69000; -0.76000; 5.85000;,
36.63000; -0.64500; 5.56000;,
41.25500; -1.12000; 5.52000;,
37.69000; -1.63000; 5.79500;,
37.69000; -1.04000; 6.02000;,
37.69000; -0.66000; 5.51500;,
41.25500; -1.12000; 5.52000;,
37.69000; -1.04000; 6.02000;,
41.25500; -1.12000; 5.52000;,
37.69000; -1.00500; 5.09500;,
37.69000; -1.60000; 5.18000;,
41.25500; -1.12000; 5.52000;,
37.69000; -1.60000; 5.18000;,
37.69000; -1.63000; 5.79500;,
36.97000; -0.98000; 6.01000;,
37.69000; -0.66000; 5.51500;,
37.69000; -1.00500; 5.09500;,
41.25500; -1.12000; 5.52000;,
36.97000; -0.94000; 6.11000;,
36.69000; -0.76000; 5.85000;,
36.97000; -0.98000; 6.01000;,
36.97000; -0.94000; 6.11000;,
37.69000; -1.60000; 5.18000;,
36.97000; -1.58000; 5.80000;,
37.69000; -1.63000; 5.79500;,
36.97000; -0.94000; 6.11000;,
36.68000; -0.68000; 5.92500;,
36.69000; -0.76000; 5.85000;,
36.97000; -1.58000; 5.28500;,
36.97000; -1.58000; 5.80000;,
37.69000; -1.60000; 5.18000;;

35;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 7, 5, 6;,
3; 9, 4, 8;,
3; 6, 4, 9;,
3; 12, 11, 10;,
3; 15, 14, 13;,
3; 18, 17, 16;,
3; 21, 20, 19;,
3; 24, 23, 22;,
3; 27, 26, 25;,
3; 30, 29, 28;,
3; 33, 32, 31;,
3; 36, 35, 34;,
3; 39, 38, 37;,
3; 42, 41, 40;,
3; 45, 44, 43;,
3; 48, 47, 46;,
3; 51, 50, 49;,
3; 54, 53, 52;,
3; 57, 56, 55;,
3; 60, 59, 58;,
3; 63, 62, 61;,
3; 66, 65, 64;,
3; 69, 68, 67;,
3; 72, 71, 70;,
3; 75, 74, 73;,
3; 3, 76, 1;,
3; 79, 78, 77;,
3; 82, 81, 80;,
3; 1, 76, 83;,
3; 86, 85, 84;,
3; 89, 88, 87;,
3; 92, 91, 90;;

MeshMaterialList {
1;
35;
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0;
Material mat41 {
  0.687500; 0.687500; 0.687500; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "5A4D99BD_c.bmp";
  }
  DiffuseTextureFileName  {
     "5A4D99BD_c.bmp";
  }
  FS10Material {
    0.687500; 0.687500; 0.687500; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "5A4D99BD_c.bmp";
    }
  }
}
}

MeshNormals {
93;
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-0.81530; -0.39580; -0.42264;,
-0.81530; -0.39580; -0.42264;,
-0.81530; -0.39580; -0.42264;,
-0.75241; -0.62171; -0.21761;,
-0.75241; -0.62171; -0.21761;,
-0.75241; -0.62171; -0.21761;,
-0.96199; -0.11474; -0.24780;,
-0.96199; -0.11474; -0.24780;,
-0.96199; -0.11474; -0.24780;,
-0.93063; -0.27651; -0.23972;,
-0.93063; -0.27651; -0.23972;,
-0.93063; -0.27651; -0.23972;,
-0.98351; -0.13361; 0.12191;,
-0.98351; -0.13361; 0.12191;,
-0.98351; -0.13361; 0.12191;,
-0.96799; -0.22510; 0.11101;,
-0.96799; -0.22510; 0.11101;,
-0.96799; -0.22510; 0.11101;,
-0.00884; 0.14142; 0.98991;,
-0.00884; 0.14142; 0.98991;,
-0.00884; 0.14142; 0.98991;,
-0.12063; -0.79321; -0.59688;,
-0.12063; -0.79321; -0.59688;,
-0.12063; -0.79321; -0.59688;,
-0.08435; -0.76997; 0.63247;,
-0.08435; -0.76997; 0.63247;,
-0.08435; -0.76997; 0.63247;,
-0.07806; 0.35524; -0.93151;,
-0.07806; 0.35524; -0.93151;,
-0.07806; 0.35524; -0.93151;,
-0.02575; -0.65284; 0.75706;,
-0.02575; -0.65284; 0.75706;,
-0.02575; -0.65284; 0.75706;,
0.01761; 0.06764; 0.99755;,
0.01761; 0.06764; 0.99755;,
0.01761; 0.06764; 0.99755;,
0.03148; 0.53756; -0.84264;,
0.03148; 0.53756; -0.84264;,
0.03148; 0.53756; -0.84264;,
0.14142; 0.44271; 0.88544;,
0.14142; 0.44271; 0.88544;,
0.14142; 0.44271; 0.88544;,
-0.04090; -0.62121; -0.78258;,
-0.04090; -0.62121; -0.78258;,
-0.04090; -0.62121; -0.78258;,
0.02054; 0.08037; -0.99655;,
0.02054; 0.08037; -0.99655;,
0.02054; 0.08037; -0.99655;,
0.00026; -0.94685; 0.32166;,
0.00026; -0.94685; 0.32166;,
0.00026; -0.94685; 0.32166;,
-0.02860; -0.93121; -0.36336;,
-0.02860; -0.93121; -0.36336;,
-0.02860; -0.93121; -0.36336;,
-0.12213; 0.35366; -0.92737;,
-0.12213; 0.35366; -0.92737;,
-0.12213; 0.35366; -0.92737;,
-0.10173; -0.79490; -0.59815;,
-0.10173; -0.79490; -0.59815;,
-0.10173; -0.79490; -0.59815;,
-0.11273; 0.14052; 0.98364;,
-0.11273; 0.14052; 0.98364;,
-0.11273; 0.14052; 0.98364;,
-0.13780; 0.98928; 0.04826;,
-0.13780; 0.98928; 0.04826;,
-0.13780; 0.98928; 0.04826;,
-1.00000; 0.00000; 0.00000;,
-0.10009; -0.76885; 0.63155;,
-0.10009; -0.76885; 0.63155;,
-0.10009; -0.76885; 0.63155;,
-0.68559; -0.67592; 0.27038;,
-0.68559; -0.67592; 0.27038;,
-0.68559; -0.67592; 0.27038;,
-1.00000; 0.00000; 0.00000;,
0.06953; 0.99640; 0.04860;,
0.06953; 0.99640; 0.04860;,
0.06953; 0.99640; 0.04860;,
-0.73839; -0.50806; 0.44345;,
-0.73839; -0.50806; 0.44345;,
-0.73839; -0.50806; 0.44345;,
0.02777; 0.99961; 0.00000;,
0.02777; 0.99961; 0.00000;,
0.02777; 0.99961; 0.00000;;

35;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 7, 5, 6;,
3; 9, 4, 8;,
3; 6, 4, 9;,
3; 12, 11, 10;,
3; 15, 14, 13;,
3; 18, 17, 16;,
3; 21, 20, 19;,
3; 24, 23, 22;,
3; 27, 26, 25;,
3; 30, 29, 28;,
3; 33, 32, 31;,
3; 36, 35, 34;,
3; 39, 38, 37;,
3; 42, 41, 40;,
3; 45, 44, 43;,
3; 48, 47, 46;,
3; 51, 50, 49;,
3; 54, 53, 52;,
3; 57, 56, 55;,
3; 60, 59, 58;,
3; 63, 62, 61;,
3; 66, 65, 64;,
3; 69, 68, 67;,
3; 72, 71, 70;,
3; 75, 74, 73;,
3; 3, 76, 1;,
3; 79, 78, 77;,
3; 82, 81, 80;,
3; 1, 76, 83;,
3; 86, 85, 84;,
3; 89, 88, 87;,
3; 92, 91, 90;;
}
MeshTextureCoords {
93;
1.86328; -0.46094;,
1.99902; 0.12402;,
1.69727; -0.37793;,
1.80664; 0.09082;,
0.33984; -0.74121;,
0.88477; -0.97949;,
0.46387; -0.60547;,
0.90430; -0.79785;,
0.01074; -0.21484;,
0.19727; -0.17871;,
0.07715; 0.40234;,
0.01074; -0.21484;,
0.25098; 0.32129;,
0.25098; 0.32129;,
0.01074; -0.21484;,
0.19727; -0.17871;,
0.50488; 0.88086;,
0.07715; 0.40234;,
0.59766; 0.70801;,
0.59766; 0.70801;,
0.07715; 0.40234;,
0.25098; 0.32129;,
1.17676; 0.97070;,
0.50488; 0.88086;,
0.59766; 0.70801;,
1.17676; 0.97070;,
0.59766; 0.70801;,
1.14160; 0.78125;,
0.33398; -0.16602;,
0.43066; -0.73730;,
0.28516; 0.25879;,
1.54980; 0.66406;,
0.98633; 0.83594;,
1.83106; 0.20117;,
0.61914; 0.70898;,
0.28516; 0.25879;,
0.98633; 0.83594;,
1.45606; -0.78418;,
1.77246; -0.21582;,
1.83106; 0.20117;,
0.28516; 0.25879;,
0.61914; 0.70898;,
0.30762; 0.32422;,
0.28516; 0.25879;,
0.30762; 0.32422;,
0.33398; -0.16602;,
1.45606; -0.78418;,
1.45996; -0.70117;,
1.77246; -0.21582;,
0.60059; -0.70117;,
0.43066; -0.73730;,
0.33398; -0.16602;,
1.83106; 0.20117;,
1.80859; 0.30078;,
1.54980; 0.66406;,
1.83106; 0.20117;,
1.77246; -0.21582;,
1.80859; 0.30078;,
0.61914; 0.70898;,
0.98633; 0.83594;,
1.06348; 0.86133;,
0.98633; 0.83594;,
1.54980; 0.66406;,
1.06348; 0.86133;,
1.00000; 0.00000;,
1.45606; -0.78418;,
1.83106; 0.20117;,
0.98633; 0.83594;,
1.00000; 0.00000;,
1.83106; 0.20117;,
1.00000; 0.00000;,
0.28516; 0.25879;,
0.43066; -0.73730;,
1.00000; 0.00000;,
0.43066; -0.73730;,
1.45606; -0.78418;,
1.63672; 0.51172;,
0.98633; 0.83594;,
0.28516; 0.25879;,
1.00000; 0.00000;,
1.69531; 0.71680;,
1.14160; 0.78125;,
1.57715; 0.56836;,
1.79102; 0.63086;,
0.43066; -0.73730;,
1.45996; -0.70117;,
1.45606; -0.78418;,
1.69531; 0.71680;,
1.17676; 0.97070;,
1.14160; 0.78125;,
0.60059; -0.70117;,
1.45996; -0.70117;,
0.43066; -0.73730;;
}

}

}

Frame frmpart42_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part42 {
40;
-25.81500; -2.28000; 1.45500;,
-25.81500; -2.28000; -6.04500;,
-25.81500; -2.08000; 1.45500;,
-25.81500; -2.08000; -6.04500;,
-33.12500; -2.08000; 0.42000;,
-33.12500; -2.28000; 0.42000;,
-29.32500; -2.08000; 0.42000;,
-29.32500; -2.28000; 0.42000;,
-33.12500; -2.28000; 1.82000;,
-33.12500; -2.28000; 0.42000;,
-33.12500; -2.08000; 1.82000;,
-33.12500; -2.08000; 0.42000;,
-36.11500; -2.28000; 2.27500;,
-35.47000; -2.28000; 1.26500;,
-36.11500; -2.08000; 2.27500;,
-35.47000; -2.08000; 1.26500;,
-25.77000; -1.68500; 1.50000;,
-29.22000; -2.28000; 1.50000;,
-25.77000; -1.48000; 1.50000;,
-29.22000; -2.08000; 1.50000;,
-20.68500; -2.28000; 1.97000;,
-25.77000; -1.68500; 1.50000;,
-20.68500; -2.08000; 1.97000;,
-25.77000; -1.48000; 1.50000;,
-20.06500; -2.28000; 4.37000;,
-20.68500; -2.28000; 1.97000;,
-20.06500; -2.08000; 4.37000;,
-20.68500; -2.08000; 1.97000;,
-21.45500; -2.28000; 5.46500;,
-20.06500; -2.28000; 4.37000;,
-21.45500; -2.08000; 5.46500;,
-20.06500; -2.08000; 4.37000;,
-26.72500; -1.68500; 5.96000;,
-21.45500; -2.28000; 5.46500;,
-26.72500; -1.48000; 5.96000;,
-21.45500; -2.08000; 5.46500;,
-29.18500; -2.28000; 2.84500;,
-26.72500; -1.68500; 5.96000;,
-29.18500; -2.08000; 2.84500;,
-26.72500; -1.48000; 5.96000;;

20;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 7, 5, 6;,
3; 10, 9, 8;,
3; 11, 9, 10;,
3; 14, 13, 12;,
3; 15, 13, 14;,
3; 18, 17, 16;,
3; 19, 17, 18;,
3; 22, 21, 20;,
3; 23, 21, 22;,
3; 26, 25, 24;,
3; 27, 25, 26;,
3; 30, 29, 28;,
3; 31, 29, 30;,
3; 34, 33, 32;,
3; 35, 33, 34;,
3; 38, 37, 36;,
3; 39, 37, 38;;

MeshMaterialList {
1;
20;
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0;
Material mat42 {
  0.687500; 0.687500; 0.687500; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "D3B2755_c.bmp";
  }
  DiffuseTextureFileName  {
     "D3B2755_c.bmp";
  }
  FS10Material {
    0.687500; 0.687500; 0.687500; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "D3B2755_c.bmp";
    }
  }
}
}

MeshNormals {
40;
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
0.84280; 0.00000; 0.53822;,
0.84280; 0.00000; 0.53822;,
0.84280; 0.00000; 0.53822;,
0.84280; 0.00000; 0.53822;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.09204; 0.00000; -0.99576;,
0.09204; 0.00000; -0.99576;,
0.09204; 0.00000; -0.99576;,
0.09204; 0.00000; -0.99576;,
0.96821; 0.00000; -0.25012;,
0.96821; 0.00000; -0.25012;,
0.96821; 0.00000; -0.25012;,
0.96821; 0.00000; -0.25012;,
0.61882; 0.00000; 0.78553;,
0.61882; 0.00000; 0.78553;,
0.61882; 0.00000; 0.78553;,
0.61882; 0.00000; 0.78553;,
0.09352; 0.00000; 0.99562;,
0.09352; 0.00000; 0.99562;,
0.09352; 0.00000; 0.99562;,
0.09352; 0.00000; 0.99562;,
-0.78479; 0.00000; 0.61977;,
-0.78479; 0.00000; 0.61977;,
-0.78479; 0.00000; 0.61977;,
-0.78479; 0.00000; 0.61977;;

20;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 7, 5, 6;,
3; 10, 9, 8;,
3; 11, 9, 10;,
3; 14, 13, 12;,
3; 15, 13, 14;,
3; 18, 17, 16;,
3; 19, 17, 18;,
3; 22, 21, 20;,
3; 23, 21, 22;,
3; 26, 25, 24;,
3; 27, 25, 26;,
3; 30, 29, 28;,
3; 31, 29, 30;,
3; 34, 33, 32;,
3; 35, 33, 34;,
3; 38, 37, 36;,
3; 39, 37, 38;;
}
MeshTextureCoords {
40;
19.50000; 0.00000;,
-18.00000; 0.00000;,
19.50000; 1.00000;,
-18.00000; 1.00000;,
-9.00000; 1.00000;,
-9.00000; 0.00000;,
10.00000; 1.00000;,
10.00000; 0.00000;,
-3.00000; 0.00000;,
4.00000; 0.00000;,
-3.00000; 1.00000;,
4.00000; 1.00000;,
-3.00000; 0.00000;,
3.00000; 0.00000;,
-3.00000; 1.00000;,
3.00000; 1.00000;,
8.00000; 0.00000;,
-9.00000; 0.00000;,
8.00000; 1.00000;,
-9.00000; 1.00000;,
11.00000; 0.00000;,
-15.00000; 0.00000;,
11.00000; 1.00000;,
-15.00000; 1.00000;,
7.00000; 0.00000;,
-6.00000; 0.00000;,
7.00000; 1.00000;,
-6.00000; 1.00000;,
4.00000; 0.00000;,
-5.00000; 0.00000;,
4.00000; 1.00000;,
-5.00000; 1.00000;,
12.00000; 0.00000;,
-15.00000; 0.00000;,
12.00000; 1.00000;,
-15.00000; 1.00000;,
9.00000; 0.00000;,
-11.00000; 0.00000;,
9.00000; 1.00000;,
-11.00000; 1.00000;;
}

}

}

Frame frmpart43_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part43 {
4;
-26.75000; -3.28000; 7.01000;,
-26.24000; -3.28000; 7.13000;,
-26.75000; -3.28000; 6.01000;,
-26.24000; -3.28000; 6.00000;;

2;
3; 2, 1, 0;,
3; 3, 1, 2;;

MeshMaterialList {
1;
2;
0,
0;
Material mat43 {
  0.687500; 0.687500; 0.687500; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "2AA98A82_c.bmp";
  }
  DiffuseTextureFileName  {
     "2AA98A82_c.bmp";
  }
  FS10Material {
    0.687500; 0.687500; 0.687500; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "2AA98A82_c.bmp";
    }
  }
}
}

MeshNormals {
4;
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;;

2;
3; 2, 1, 0;,
3; 3, 1, 2;;
}
MeshTextureCoords {
4;
0.00000; 0.00000;,
1.00000; 0.00000;,
0.00000; 1.00000;,
1.00000; 1.00000;;
}

}

}

Frame frmpart44_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part44 {
9;
-25.76500; -2.28000; -6.04500;,
-25.76500; 0.72000; -7.04500;,
-25.76500; 0.72000; -6.04500;,
-25.76500; -3.28000; -7.04500;,
-26.75000; -0.28000; 7.01000;,
-27.64000; -3.03500; 7.63000;,
-27.64000; -0.03500; 7.63000;,
-25.76500; -3.28000; -6.04500;,
-26.75000; -3.28000; 7.01000;;

5;
3; 2, 1, 0;,
3; 1, 3, 0;,
3; 6, 5, 4;,
3; 0, 3, 7;,
3; 4, 5, 8;;

MeshMaterialList {
1;
5;
0,
0,
0,
0,
0;
Material mat44 {
  0.687500; 0.687500; 0.687500; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "5D246C08_c.bmp";
  }
  DiffuseTextureFileName  {
     "5D246C08_c.bmp";
  }
  FS10Material {
    0.687500; 0.687500; 0.687500; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "5D246C08_c.bmp";
    }
  }
}
}

MeshNormals {
9;
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
-0.57160; 0.00000; -0.82053;,
-0.57160; 0.00000; -0.82053;,
-0.57160; 0.00000; -0.82053;,
1.00000; 0.00000; 0.00000;,
-0.57160; 0.00000; -0.82053;;

5;
3; 2, 1, 0;,
3; 1, 3, 0;,
3; 6, 5, 4;,
3; 0, 3, 7;,
3; 4, 5, 8;;
}
MeshTextureCoords {
9;
0.06250; 0.25000;,
0.93750; 1.00000;,
0.06250; 1.00000;,
0.93750; 0.00000;,
0.93750; 1.00000;,
0.06250; 0.00000;,
0.06250; 1.00000;,
0.06250; 0.00000;,
0.93750; 0.00000;;
}

}

}

Frame frmpart45_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part45 {
37;
-26.75000; -3.28000; 6.01000;,
-21.23500; -3.28000; 5.91000;,
-26.75000; -1.68000; 6.01000;,
-26.75000; -1.68000; 6.01000;,
-29.22000; -2.28000; 2.87000;,
-26.75000; -3.28000; 6.01000;,
-19.60500; -3.28000; 4.59000;,
-21.43500; -2.28000; 5.51000;,
-21.23500; -3.28000; 5.91000;,
-26.75000; -1.68000; 6.01000;,
-21.23500; -3.28000; 5.91000;,
-21.43500; -2.28000; 5.51000;,
-20.00500; -2.28000; 4.39000;,
-20.24000; -3.28000; 1.52000;,
-20.64000; -2.28000; 1.92000;,
-20.00500; -2.28000; 4.39000;,
-21.43500; -2.28000; 5.51000;,
-19.60500; -3.28000; 4.59000;,
-25.76500; -2.28000; 1.45500;,
-20.24000; -3.28000; 1.52000;,
-25.76500; -3.28000; 1.45500;,
-19.60500; -3.28000; 4.59000;,
-20.24000; -3.28000; 1.52000;,
-20.00500; -2.28000; 4.39000;,
-25.76500; -1.68000; 1.45500;,
-20.64000; -2.28000; 1.92000;,
-25.76500; -2.28000; 1.45500;,
-25.76500; -2.28000; 1.45500;,
-20.64000; -2.28000; 1.92000;,
-20.24000; -3.28000; 1.52000;,
-25.76500; -2.28000; 1.45500;,
-25.76500; -3.28000; -6.04500;,
-25.76500; -2.28000; -6.04500;,
-29.22000; -2.28000; 1.45500;,
-25.76500; -1.68000; 1.45500;,
-25.76500; -2.28000; 1.45500;,
-25.76500; -3.28000; 1.45500;;

13;
3; 2, 1, 0;,
3; 5, 4, 3;,
3; 8, 7, 6;,
3; 11, 10, 9;,
3; 14, 13, 12;,
3; 17, 16, 15;,
3; 20, 19, 18;,
3; 23, 22, 21;,
3; 26, 25, 24;,
3; 29, 28, 27;,
3; 32, 31, 30;,
3; 35, 34, 33;,
3; 30, 31, 36;;

MeshMaterialList {
1;
13;
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0;
Material mat45 {
  0.687500; 0.687500; 0.687500; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "467E67FD_c.bmp";
  }
  DiffuseTextureFileName  {
     "467E67FD_c.bmp";
  }
  FS10Material {
    0.687500; 0.687500; 0.687500; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "467E67FD_c.bmp";
    }
  }
}
}

MeshNormals {
37;
0.01813; 0.00000; 0.99984;,
0.01813; 0.00000; 0.99984;,
0.01813; 0.00000; 0.99984;,
-0.78597; 0.00000; 0.61826;,
-0.78597; 0.00000; 0.61826;,
-0.78597; 0.00000; 0.61826;,
0.57673; 0.40022; 0.71218;,
0.57673; 0.40022; 0.71218;,
0.57673; 0.40022; 0.71218;,
0.12982; 0.39052; 0.91139;,
0.12982; 0.39052; 0.91139;,
0.12982; 0.39052; 0.91139;,
0.87074; 0.43784; -0.22385;,
0.87074; 0.43784; -0.22385;,
0.87074; 0.43784; -0.22385;,
0.57169; 0.37466; 0.72993;,
0.57169; 0.37466; 0.72993;,
0.57169; 0.37466; 0.72993;,
0.01176; 0.00000; -0.99993;,
0.01176; 0.00000; -0.99993;,
0.01176; 0.00000; -0.99993;,
0.92395; 0.33136; -0.19111;,
0.92395; 0.33136; -0.19111;,
0.92395; 0.33136; -0.19111;,
0.09036; 0.00000; -0.99591;,
0.09036; 0.00000; -0.99591;,
0.09036; 0.00000; -0.99591;,
0.08288; 0.39851; -0.91341;,
0.08288; 0.39851; -0.91341;,
0.08288; 0.39851; -0.91341;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
1.00000; 0.00000; 0.00000;;

13;
3; 2, 1, 0;,
3; 5, 4, 3;,
3; 8, 7, 6;,
3; 11, 10, 9;,
3; 14, 13, 12;,
3; 17, 16, 15;,
3; 20, 19, 18;,
3; 23, 22, 21;,
3; 26, 25, 24;,
3; 29, 28, 27;,
3; 32, 31, 30;,
3; 35, 34, 33;,
3; 30, 31, 36;;
}
MeshTextureCoords {
37;
0.00000; 0.00000;,
3.00000; 0.00000;,
0.00000; 1.00000;,
2.00000; 1.00000;,
0.00000; 1.00000;,
2.00000; 0.00000;,
2.09961; 0.00000;,
0.00000; 1.00000;,
0.00000; 0.00000;,
0.00000; 1.00000;,
3.00000; 0.00000;,
3.00000; 1.00000;,
0.00000; 1.00000;,
3.00000; 0.00000;,
3.00000; 1.00000;,
2.00000; 1.00000;,
0.00000; 1.00000;,
2.09961; 0.00000;,
3.00000; 0.62500;,
0.00000; 0.00000;,
3.00000; 0.00000;,
0.00000; 0.00000;,
3.00000; 0.00000;,
0.00000; 1.00000;,
3.00000; 1.00000;,
0.00000; 1.00000;,
3.00000; 0.62500;,
3.00000; 0.62500;,
0.00000; 1.00000;,
0.00000; 0.00000;,
0.00000; 1.00000;,
8.00000; 0.00000;,
8.00000; 1.00000;,
3.00000; 1.00000;,
0.00000; 1.00000;,
0.00000; 0.62500;,
0.00000; 0.00000;;
}

}

}

Frame frmpart46_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part46 {
123;
-36.38500; -0.97500; 1.88000;,
-36.26500; -0.03000; 2.44500;,
-37.42000; -1.81000; 2.76500;,
-33.73000; -1.14500; 5.71000;,
-37.42000; -1.81000; 2.76500;,
-36.26500; -0.03000; 2.44500;,
-36.38500; -0.97500; 1.88000;,
-34.92500; -1.32000; 0.42000;,
-34.42000; -0.62000; 0.93000;,
-36.38500; -0.97500; 1.88000;,
-34.42000; -0.62000; 0.93000;,
-36.26500; -0.03000; 2.44500;,
-38.99500; 0.24000; 1.48000;,
-36.38500; -0.97500; 1.88000;,
-37.42000; -1.81000; 2.76500;,
-36.38500; -0.97500; 1.88000;,
-35.43500; -0.62000; -0.09000;,
-34.92500; -1.32000; 0.42000;,
-38.99500; 0.24000; 1.48000;,
-36.26500; -0.03000; 2.44500;,
-37.42000; -1.81000; 2.76500;,
-38.99500; 0.24000; 1.48000;,
-35.43500; -0.62000; -0.09000;,
-36.38500; -0.97500; 1.88000;,
-38.99500; 0.24000; 1.48000;,
-37.42000; -1.81000; 2.76500;,
-43.33500; -0.84000; -1.18000;,
-38.99500; 0.24000; 1.48000;,
-43.33500; -0.84000; -1.18000;,
-44.20000; 1.50000; -0.31000;,
-36.11000; -0.22000; -3.13500;,
-38.03000; 0.73000; -5.97500;,
-36.11000; -1.62000; -3.13500;,
-36.11000; -1.62000; -3.13500;,
-38.03000; 0.73000; -5.97500;,
-38.03000; -1.07000; -4.77500;,
-36.11000; -0.22000; -3.13500;,
-36.11000; -1.62000; -3.13500;,
-34.92500; -1.32000; 0.42000;,
-36.11000; -0.22000; -3.13500;,
-34.92500; -1.32000; 0.42000;,
-35.43500; -0.62000; -0.09000;,
-43.33500; 1.80000; -1.44000;,
-44.20000; 1.50000; -0.31000;,
-43.33500; -0.84000; -1.18000;,
-34.92500; -2.28000; 0.42000;,
-33.12500; -2.28000; 2.94000;,
-36.11500; -2.28000; 2.27500;,
-36.11500; -1.02000; 2.27500;,
-33.12500; -0.28000; 2.94000;,
-36.11500; -2.28000; 2.27500;,
-38.52500; -1.28000; -3.18000;,
-36.11500; -1.02000; 2.27500;,
-38.52500; -0.08000; -3.18000;,
-34.92500; -1.32000; 0.42000;,
-33.12500; -2.28000; 0.42000;,
-33.12500; -0.47000; 0.42000;,
-33.12500; -0.47000; 0.42000;,
-34.42000; -0.62000; 0.93000;,
-34.92500; -1.32000; 0.42000;,
-38.03000; -1.07000; -4.77500;,
-43.33500; 1.80000; -1.44000;,
-43.33500; -0.84000; -1.18000;,
-34.92500; -2.28000; 0.42000;,
-38.52500; -0.08000; -3.18000;,
-43.33500; -0.84000; -1.18000;,
-43.33500; 1.80000; -1.44000;,
-38.03000; 0.73000; -5.97500;,
-43.33500; 1.80000; -1.44000;,
-38.03000; -1.07000; -4.77500;,
-38.52500; -1.28000; -3.18000;,
-43.33500; -0.84000; -1.18000;,
-38.52500; -0.08000; -3.18000;,
-32.05500; -1.90500; 0.87000;,
-31.73000; -0.78000; 0.87000;,
-31.89000; -1.90500; 1.15000;,
-32.05500; -0.78000; 1.43000;,
-31.89000; -1.90500; 1.15000;,
-31.73000; -0.78000; 0.87000;,
-32.37500; -0.78000; 0.87000;,
-32.05500; -1.90500; 0.87000;,
-32.21500; -1.90500; 1.15000;,
-31.73000; -0.78000; 0.87000;,
-32.05500; -1.90500; 0.87000;,
-32.37500; -0.78000; 0.87000;,
-32.05500; -0.78000; 1.43000;,
-32.21500; -1.90500; 1.15000;,
-31.89000; -1.90500; 1.15000;,
-32.37500; -0.78000; 0.87000;,
-32.21500; -1.90500; 1.15000;,
-32.05500; -0.78000; 1.43000;,
-32.05500; -1.90500; 0.87000;,
-32.37500; -2.28000; 0.87000;,
-32.21500; -1.90500; 1.15000;,
-31.73000; -2.28000; 0.87000;,
-32.37500; -2.28000; 0.87000;,
-32.21500; -1.90500; 1.15000;,
-32.05500; -2.28000; 1.43000;,
-31.89000; -1.90500; 1.15000;,
-32.05500; -2.28000; 1.43000;,
-32.37500; -2.28000; 0.87000;,
-31.89000; -1.90500; 1.15000;,
-31.73000; -2.28000; 0.87000;,
-32.05500; -1.90500; 0.87000;,
-31.73000; -2.28000; 0.87000;,
-31.89000; -1.90500; 1.15000;,
-32.05500; -2.28000; 1.43000;,
-27.64000; -3.03500; 7.63000;,
-33.12500; -2.28000; 5.70500;,
-27.64000; -0.03500; 7.63000;,
-33.12500; 0.13500; 5.70500;,
-33.12500; 0.13500; 5.70500;,
-33.12500; -2.28000; 5.70500;,
-33.12500; -0.28000; 2.94000;,
-33.12500; -2.28000; 2.94000;,
-25.76500; -2.28000; -6.04500;,
-33.12500; 0.13500; -2.79500;,
-33.12500; -2.28000; -2.79500;,
-25.76500; 0.72000; -6.04500;,
-33.12500; -2.28000; 0.42000;,
-33.12500; -2.28000; -2.79500;,
-33.12500; -0.47000; 0.42000;,
-33.12500; 0.13500; -2.79500;;

47;
3; 2, 1, 0;,
3; 5, 4, 3;,
3; 8, 7, 6;,
3; 11, 10, 9;,
3; 14, 13, 12;,
3; 17, 16, 15;,
3; 20, 19, 18;,
3; 23, 22, 21;,
3; 26, 25, 24;,
3; 29, 28, 27;,
3; 32, 31, 30;,
3; 35, 34, 33;,
3; 38, 37, 36;,
3; 41, 40, 39;,
3; 44, 43, 42;,
3; 45, 37, 38;,
3; 48, 47, 46;,
3; 49, 48, 46;,
3; 52, 51, 50;,
3; 53, 51, 52;,
3; 56, 55, 54;,
3; 59, 58, 57;,
3; 62, 61, 60;,
3; 54, 55, 63;,
3; 66, 65, 64;,
3; 69, 68, 67;,
3; 72, 71, 70;,
3; 75, 74, 73;,
3; 78, 77, 76;,
3; 81, 80, 79;,
3; 84, 83, 82;,
3; 87, 86, 85;,
3; 90, 89, 88;,
3; 93, 92, 91;,
3; 83, 95, 94;,
3; 98, 97, 96;,
3; 100, 89, 99;,
3; 103, 102, 101;,
3; 106, 105, 104;,
3; 109, 108, 107;,
3; 110, 108, 109;,
3; 113, 112, 111;,
3; 114, 112, 113;,
3; 117, 116, 115;,
3; 115, 116, 118;,
3; 121, 120, 119;,
3; 122, 120, 121;;

MeshMaterialList {
1;
47;
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0;
Material mat46 {
  0.687500; 0.687500; 0.687500; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "64A664D_c.bmp";
  }
  DiffuseTextureFileName  {
     "64A664D_c.bmp";
  }
  FS10Material {
    0.687500; 0.687500; 0.687500; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "64A664D_c.bmp";
    }
  }
}
}

MeshNormals {
123;
0.76042; -0.40168; 0.51032;,
0.76042; -0.40168; 0.51032;,
0.76042; -0.40168; 0.51032;,
0.59379; -0.49880; -0.63136;,
0.59379; -0.49880; -0.63136;,
0.59379; -0.49880; -0.63136;,
0.40599; -0.71111; 0.57402;,
0.40599; -0.71111; 0.57402;,
0.40599; -0.71111; 0.57402;,
0.44851; -0.49992; 0.74089;,
0.44851; -0.49992; 0.74089;,
0.44851; -0.49992; 0.74089;,
-0.16667; -0.61243; -0.77275;,
-0.16667; -0.61243; -0.77275;,
-0.16667; -0.61243; -0.77275;,
-0.57315; -0.71249; -0.40479;,
-0.57315; -0.71249; -0.40479;,
-0.57315; -0.71249; -0.40479;,
0.28245; -0.34425; -0.89539;,
0.28245; -0.34425; -0.89539;,
0.28245; -0.34425; -0.89539;,
-0.35650; -0.87428; -0.32946;,
-0.35650; -0.87428; -0.32946;,
-0.35650; -0.87428; -0.32946;,
0.53907; -0.10933; -0.83514;,
0.53907; -0.10933; -0.83514;,
0.53907; -0.10933; -0.83514;,
0.38560; 0.44338; -0.80915;,
0.38560; 0.44338; -0.80915;,
0.38560; 0.44338; -0.80915;,
-0.82844; 0.00000; 0.56007;,
-0.82844; 0.00000; 0.56007;,
-0.82844; 0.00000; 0.56007;,
-0.48314; 0.48566; 0.72850;,
-0.48314; 0.48566; 0.72850;,
-0.48314; 0.48566; 0.72850;,
-0.94868; 0.00000; 0.31623;,
-0.94868; 0.00000; 0.31623;,
-0.94868; 0.00000; 0.31623;,
-0.84137; -0.52760; 0.11720;,
-0.84137; -0.52760; 0.11720;,
-0.84137; -0.52760; 0.11720;,
0.78474; 0.06075; 0.61684;,
0.78474; 0.06075; 0.61684;,
0.78474; 0.06075; 0.61684;,
-0.94868; 0.00000; 0.31623;,
0.21710; 0.00000; -0.97615;,
0.21710; 0.00000; -0.97615;,
0.21710; 0.00000; -0.97615;,
0.21710; 0.00000; -0.97615;,
0.91471; 0.00000; -0.40411;,
0.91471; 0.00000; -0.40411;,
0.91471; 0.00000; -0.40411;,
0.91471; 0.00000; -0.40411;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.33046; -0.69981; 0.63329;,
0.33046; -0.69981; 0.63329;,
0.33046; -0.69981; 0.63329;,
0.56155; 0.08110; 0.82346;,
0.56155; 0.08110; 0.82346;,
0.56155; 0.08110; 0.82346;,
0.00000; 0.00000; 1.00000;,
-0.37004; -0.09105; -0.92454;,
-0.37004; -0.09105; -0.92454;,
-0.37004; -0.09105; -0.92454;,
0.63554; 0.42827; 0.64240;,
0.63554; 0.42827; 0.64240;,
0.63554; 0.42827; 0.64240;,
-0.38393; 0.00000; -0.92336;,
-0.38393; 0.00000; -0.92336;,
-0.38393; 0.00000; -0.92336;,
0.83603; -0.24152; -0.49266;,
0.83603; -0.24152; -0.49266;,
0.83603; -0.24152; -0.49266;,
0.86490; 0.00192; 0.50194;,
0.86490; 0.00192; 0.50194;,
0.86490; 0.00192; 0.50194;,
-0.84292; -0.23976; -0.48167;,
-0.84292; -0.23976; -0.48167;,
-0.84292; -0.23976; -0.48167;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; -0.24152; 0.97040;,
0.00000; -0.24152; 0.97040;,
0.00000; -0.24152; 0.97040;,
-0.86824; 0.00000; 0.49614;,
-0.86824; 0.00000; 0.49614;,
-0.86824; 0.00000; 0.49614;,
-0.69763; 0.59531; -0.39865;,
-0.69763; 0.59531; -0.39865;,
-0.69763; 0.59531; -0.39865;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.59829; 0.80128;,
0.00000; 0.59829; 0.80128;,
0.00000; 0.59829; 0.80128;,
-0.86824; 0.00000; 0.49614;,
-0.86824; 0.00000; 0.49614;,
0.69034; 0.59829; -0.40680;,
0.69034; 0.59829; -0.40680;,
0.69034; 0.59829; -0.40680;,
0.86488; -0.00577; 0.50194;,
0.86488; -0.00577; 0.50194;,
0.86488; -0.00577; 0.50194;,
0.33116; 0.00000; -0.94358;,
0.33116; 0.00000; -0.94358;,
0.33116; 0.00000; -0.94358;,
0.33116; 0.00000; -0.94358;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
0.40395; 0.00000; 0.91478;,
0.40395; 0.00000; 0.91478;,
0.40395; 0.00000; 0.91478;,
0.40395; 0.00000; 0.91478;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;;

47;
3; 2, 1, 0;,
3; 5, 4, 3;,
3; 8, 7, 6;,
3; 11, 10, 9;,
3; 14, 13, 12;,
3; 17, 16, 15;,
3; 20, 19, 18;,
3; 23, 22, 21;,
3; 26, 25, 24;,
3; 29, 28, 27;,
3; 32, 31, 30;,
3; 35, 34, 33;,
3; 38, 37, 36;,
3; 41, 40, 39;,
3; 44, 43, 42;,
3; 45, 37, 38;,
3; 48, 47, 46;,
3; 49, 48, 46;,
3; 52, 51, 50;,
3; 53, 51, 52;,
3; 56, 55, 54;,
3; 59, 58, 57;,
3; 62, 61, 60;,
3; 54, 55, 63;,
3; 66, 65, 64;,
3; 69, 68, 67;,
3; 72, 71, 70;,
3; 75, 74, 73;,
3; 78, 77, 76;,
3; 81, 80, 79;,
3; 84, 83, 82;,
3; 87, 86, 85;,
3; 90, 89, 88;,
3; 93, 92, 91;,
3; 83, 95, 94;,
3; 98, 97, 96;,
3; 100, 89, 99;,
3; 103, 102, 101;,
3; 106, 105, 104;,
3; 109, 108, 107;,
3; 110, 108, 109;,
3; 113, 112, 111;,
3; 114, 112, 113;,
3; 117, 116, 115;,
3; 115, 116, 118;,
3; 121, 120, 119;,
3; 122, 120, 121;;
}
MeshTextureCoords {
123;
1.00000; 0.50000;,
0.00000; 1.00000;,
0.50000; 0.50000;,
0.00000; 1.00000;,
2.50000; 0.50000;,
2.00000; 1.00000;,
1.00000; 0.50000;,
2.00000; 0.50000;,
2.00000; 1.00000;,
1.00000; 0.50000;,
2.00000; 1.00000;,
0.00000; 1.00000;,
2.00000; 1.00000;,
1.00000; 0.50000;,
1.50000; 0.50000;,
1.00000; 0.50000;,
0.00000; 1.00000;,
0.00000; 0.50000;,
3.00000; 1.00000;,
2.00000; 1.00000;,
2.50000; 0.50000;,
2.00000; 1.00000;,
0.00000; 1.00000;,
1.00000; 0.50000;,
1.00000; 1.00000;,
0.50000; 0.50000;,
3.00000; 0.50000;,
1.00000; 1.00000;,
3.00000; 0.50000;,
2.00000; 1.00000;,
1.67773; 1.00000;,
0.00000; 1.00000;,
1.38477; 0.00000;,
1.38477; 0.00000;,
0.00000; 1.00000;,
0.00000; 0.00000;,
1.67773; 1.00000;,
1.38477; 0.00000;,
3.00000; 0.50000;,
1.67773; 1.00000;,
3.00000; 0.50000;,
3.00000; 1.00000;,
3.00000; 1.00000;,
2.00000; 1.00000;,
3.00000; 0.50000;,
3.00000; 0.00000;,
1.00000; 0.00000;,
0.00000; 0.00000;,
0.00000; 1.00000;,
1.00000; 1.00000;,
0.00000; 0.00000;,
4.00000; 0.00000;,
0.00000; 1.00000;,
4.00000; 1.00000;,
0.00000; 0.50000;,
1.00000; 0.00000;,
1.00000; 1.00000;,
1.00000; 1.00000;,
0.00000; 1.00000;,
0.00000; 0.50000;,
4.00000; 0.00000;,
0.00000; 1.00000;,
0.00000; 0.00000;,
0.00000; 0.00000;,
0.00000; 1.00000;,
4.00000; 0.00000;,
4.00000; 1.00000;,
4.00000; 1.00000;,
0.00000; 1.00000;,
4.00000; 0.00000;,
0.00000; 0.00000;,
4.00000; 0.00000;,
0.00000; 1.00000;,
2.50000; 0.25000;,
2.00000; 1.00000;,
1.50000; 0.25000;,
1.00000; 1.00000;,
1.50000; 0.25000;,
2.00000; 1.00000;,
3.00000; 1.00000;,
2.50000; 0.25000;,
3.50000; 0.25000;,
2.00000; 1.00000;,
2.50000; 0.25000;,
3.00000; 1.00000;,
1.00000; 1.00000;,
0.50000; 0.25000;,
1.50000; 0.25000;,
0.00000; 1.00000;,
0.50000; 0.25000;,
1.00000; 1.00000;,
2.50000; 0.25000;,
3.00000; 0.00000;,
3.50000; 0.25000;,
2.00000; 0.00000;,
3.00000; 0.00000;,
0.50000; 0.25000;,
1.00000; 0.00000;,
1.50000; 0.25000;,
1.00000; 0.00000;,
0.00000; 0.00000;,
1.50000; 0.25000;,
2.00000; 0.00000;,
2.50000; 0.25000;,
2.00000; 0.00000;,
1.50000; 0.25000;,
1.00000; 0.00000;,
0.00000; 0.00000;,
2.00000; 0.00000;,
0.00000; 1.00000;,
2.00000; 1.00000;,
0.00000; 1.00000;,
0.00000; 0.00000;,
1.00000; 1.00000;,
1.00000; 0.00000;,
1.00000; 0.25000;,
-1.00000; 1.00000;,
-1.00000; 0.00000;,
1.00000; 1.00000;,
0.00000; 0.00000;,
1.00000; 0.00000;,
0.00000; 1.00000;,
1.00000; 1.00000;;
}

}

}

Frame frmpart47_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part47 {
49;
-33.12500; -2.28000; 0.42000;,
-33.12500; -2.28000; 2.94000;,
-32.37500; -2.28000; 0.87000;,
-32.05500; -2.28000; 1.43000;,
-33.12500; -2.28000; -2.79500;,
-31.73000; -2.28000; 0.87000;,
-29.22000; -2.28000; 2.87000;,
-29.22000; -2.28000; 1.45500;,
-25.76500; -1.68000; 1.45500;,
-21.43500; -2.28000; 5.51000;,
-20.00500; -2.28000; 4.39000;,
-25.76500; -1.68000; 1.45500;,
-20.00500; -2.28000; 4.39000;,
-20.64000; -2.28000; 1.92000;,
-29.22000; -2.28000; 2.87000;,
-26.75000; -1.68000; 6.01000;,
-25.76500; -1.68000; 1.45500;,
-26.75000; -1.68000; 6.01000;,
-21.43500; -2.28000; 5.51000;,
-25.76500; -1.68000; 1.45500;,
-25.76500; -2.28000; 1.45500;,
-25.76500; -2.28000; -6.04500;,
-29.22000; -2.28000; 2.87000;,
-25.76500; -1.68000; 1.45500;,
-29.22000; -2.28000; 1.45500;,
-33.12500; -2.28000; 5.70500;,
-33.12500; -2.28000; 5.70500;,
-27.64000; -3.03500; 7.63000;,
-26.75000; -3.28000; 6.01000;,
-33.12500; -2.28000; 5.70500;,
-26.75000; -3.28000; 6.01000;,
-29.22000; -2.28000; 2.87000;,
-36.11500; -2.28000; 2.27500;,
-34.92500; -2.28000; 0.42000;,
-26.75000; -3.28000; 7.01000;,
-26.75000; -3.28000; 6.01000;,
-27.64000; -3.03500; 7.63000;,
-36.11000; -1.62000; -3.13500;,
-38.52500; -1.28000; -3.18000;,
-34.92500; -2.28000; 0.42000;,
-36.11000; -1.62000; -3.13500;,
-38.03000; -1.07000; -4.77500;,
-38.52500; -1.28000; -3.18000;,
-34.92500; -2.28000; 0.42000;,
-38.52500; -1.28000; -3.18000;,
-36.11500; -2.28000; 2.27500;,
-38.03000; -1.07000; -4.77500;,
-43.33500; -0.84000; -1.18000;,
-38.52500; -1.28000; -3.18000;;

25;
3; 2, 1, 0;,
3; 2, 3, 1;,
3; 5, 2, 4;,
3; 2, 0, 4;,
3; 3, 5, 6;,
3; 4, 7, 5;,
3; 1, 3, 6;,
3; 7, 6, 5;,
3; 10, 9, 8;,
3; 13, 12, 11;,
3; 16, 15, 14;,
3; 19, 18, 17;,
3; 21, 20, 4;,
3; 24, 23, 22;,
3; 25, 1, 6;,
3; 4, 20, 7;,
3; 28, 27, 26;,
3; 31, 30, 29;,
3; 33, 1, 32;,
3; 36, 35, 34;,
3; 39, 38, 37;,
3; 0, 1, 33;,
3; 42, 41, 40;,
3; 45, 44, 43;,
3; 48, 47, 46;;

MeshMaterialList {
1;
25;
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0;
Material mat47 {
  0.687500; 0.687500; 0.687500; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "37BEB5A4_c.bmp";
  }
  DiffuseTextureFileName  {
     "37BEB5A4_c.bmp";
  }
  FS10Material {
    0.687500; 0.687500; 0.687500; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "37BEB5A4_c.bmp";
    }
  }
}
}

MeshNormals {
49;
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.06278; 0.99480; 0.08016;,
0.06278; 0.99480; 0.08016;,
0.06278; 0.99480; 0.08016;,
0.11896; 0.99243; -0.03058;,
0.11896; 0.99243; -0.03058;,
0.11896; 0.99243; -0.03058;,
-0.18702; 0.98152; -0.04044;,
-0.18702; 0.98152; -0.04044;,
-0.18702; 0.98152; -0.04044;,
0.11444; 0.99312; 0.02475;,
0.11444; 0.99312; 0.02475;,
0.11444; 0.99312; 0.02475;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
-0.17110; 0.98525; 0.00000;,
-0.17110; 0.98525; 0.00000;,
-0.17110; 0.98525; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.15758; 0.98553; -0.06247;,
0.15758; 0.98553; -0.06247;,
0.15758; 0.98553; -0.06247;,
0.14275; 0.97003; 0.19663;,
0.14275; 0.97003; 0.19663;,
0.14275; 0.97003; 0.19663;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.26541; 0.96414; 0.00000;,
0.26541; 0.96414; 0.00000;,
0.26541; 0.96414; 0.00000;,
0.13559; 0.98125; 0.13697;,
0.13559; 0.98125; 0.13697;,
0.13559; 0.98125; 0.13697;,
0.13427; 0.97622; 0.17020;,
0.13427; 0.97622; 0.17020;,
0.13427; 0.97622; 0.17020;,
0.16590; 0.98038; 0.10643;,
0.16590; 0.98038; 0.10643;,
0.16590; 0.98038; 0.10643;,
0.16291; 0.97039; 0.17832;,
0.16291; 0.97039; 0.17832;,
0.16291; 0.97039; 0.17832;;

25;
3; 2, 1, 0;,
3; 2, 3, 1;,
3; 5, 2, 4;,
3; 2, 0, 4;,
3; 3, 5, 6;,
3; 4, 7, 5;,
3; 1, 3, 6;,
3; 7, 6, 5;,
3; 10, 9, 8;,
3; 13, 12, 11;,
3; 16, 15, 14;,
3; 19, 18, 17;,
3; 21, 20, 4;,
3; 24, 23, 22;,
3; 25, 1, 6;,
3; 4, 20, 7;,
3; 28, 27, 26;,
3; 31, 30, 29;,
3; 33, 1, 32;,
3; 36, 35, 34;,
3; 39, 38, 37;,
3; 0, 1, 33;,
3; 42, 41, 40;,
3; 45, 44, 43;,
3; 48, 47, 46;;
}
MeshTextureCoords {
49;
-2.18848; 3.29492;,
-2.18848; 2.03516;,
-1.81348; 3.07031;,
-1.65137; 2.78906;,
-2.18848; 4.90234;,
-1.48926; 3.07031;,
-0.23535; 2.06934;,
-0.23535; 2.77734;,
1.49219; 2.77734;,
3.65625; 0.75000;,
4.37207; 1.31055;,
1.49219; 2.77734;,
4.37207; 1.31055;,
4.05469; 2.54590;,
-0.23535; 2.06934;,
1.00000; 0.50000;,
1.49219; 2.77734;,
1.00000; 0.50000;,
3.65625; 0.75000;,
1.49219; 2.77734;,
1.49219; 2.77734;,
1.49219; 6.52734;,
-0.23535; 2.06934;,
1.49219; 2.77734;,
-0.23535; 2.77734;,
-2.18848; 0.65234;,
-2.18848; 0.65234;,
0.55371; -0.31055;,
1.00000; 0.50000;,
-2.18848; 0.65234;,
1.00000; 0.50000;,
-0.23535; 2.06934;,
-3.68262; 2.36719;,
-3.08887; 3.29492;,
1.00000; 0.00000;,
1.00000; 0.50000;,
0.55371; -0.31055;,
-3.68066; 5.07129;,
-4.88867; 5.09570;,
-3.08887; 3.29492;,
-3.68066; 5.07129;,
-4.63965; 5.89356;,
-4.88867; 5.09570;,
-3.08887; 3.29492;,
-4.88867; 5.09570;,
-3.68262; 2.36719;,
-4.63965; 5.89356;,
-7.29199; 4.09570;,
-4.88867; 5.09570;;
}

}

}

Frame frmpart48_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part48 {
9;
30.39500; 0.62000; -35.47000;,
27.35500; -0.88000; -34.27000;,
28.48500; -0.88000; -33.13500;,
30.39500; 0.62000; -35.47000;,
33.22500; 1.62000; -34.05500;,
31.10500; 0.62000; -36.17500;,
29.69000; 0.62000; -36.17500;,
27.35500; -0.88000; -34.27000;,
30.39500; 0.62000; -35.47000;;

3;
3; 2, 1, 0;,
3; 5, 4, 3;,
3; 8, 7, 6;;

MeshMaterialList {
1;
3;
0,
0,
0;
Material mat48 {
  0.687500; 0.687500; 0.687500; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "17F43283_c.bmp";
  }
  DiffuseTextureFileName  {
     "17F43283_c.bmp";
  }
  FS10Material {
    0.687500; 0.687500; 0.687500; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "17F43283_c.bmp";
    }
  }
}
}

MeshNormals {
9;
-0.31684; 0.89449; 0.31544;,
-0.31684; 0.89449; 0.31544;,
-0.31684; 0.89449; 0.31544;,
-0.22294; 0.94862; -0.22452;,
-0.22294; 0.94862; -0.22452;,
-0.22294; 0.94862; -0.22452;,
-0.31638; 0.89432; 0.31639;,
-0.31638; 0.89432; 0.31639;,
-0.31638; 0.89432; 0.31639;;

3;
3; 2, 1, 0;,
3; 5, 4, 3;,
3; 8, 7, 6;;
}
MeshTextureCoords {
9;
2.00000; 30.00000;,
0.00000; 0.00000;,
2.00000; 0.00000;,
2.00000; 0.00000;,
0.00000; 30.00000;,
0.00000; 0.00000;,
0.00000; 30.00000;,
0.00000; 0.00000;,
2.00000; 30.00000;;
}

}

}

Frame frmpart49_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part49 {
16;
-16.61000; -4.28000; 31.97500;,
-16.69000; -4.28000; 32.11500;,
-16.61000; -3.30500; 31.97500;,
-16.69000; -3.30500; 32.11500;,
-16.61000; -3.30500; 31.97500;,
-16.69000; -3.30500; 32.11500;,
-16.61000; -3.23000; 31.97500;,
-16.69000; -3.23000; 32.11500;,
-16.96500; -4.28000; 35.17500;,
-16.83000; -4.28000; 35.25500;,
-16.96500; -3.30500; 35.17500;,
-16.83000; -3.30500; 35.25500;,
-16.96500; -3.30500; 35.17500;,
-16.83000; -3.30500; 35.25500;,
-16.96500; -3.23000; 35.17500;,
-16.83000; -3.23000; 35.25500;;

8;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 7, 5, 6;,
3; 10, 9, 8;,
3; 11, 9, 10;,
3; 14, 13, 12;,
3; 15, 13, 14;;

MeshMaterialList {
1;
8;
0,
0,
0,
0,
0,
0,
0,
0;
Material mat49 {
  0.687500; 0.687500; 0.687500; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "65BD1672_c.bmp";
  }
  DiffuseTextureFileName  {
     "65BD1672_c.bmp";
  }
  FS10Material {
    0.687500; 0.687500; 0.687500; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "65BD1672_c.bmp";
    }
  }
}
}

MeshNormals {
16;
-0.86824; 0.00000; -0.49615;,
-0.86824; 0.00000; -0.49615;,
-0.86824; 0.00000; -0.49615;,
-0.86824; 0.00000; -0.49615;,
-0.86824; 0.00000; -0.49615;,
-0.86824; 0.00000; -0.49615;,
-0.86824; 0.00000; -0.49615;,
-0.86824; 0.00000; -0.49615;,
-0.50979; 0.00000; 0.86030;,
-0.50979; 0.00000; 0.86030;,
-0.50979; 0.00000; 0.86030;,
-0.50979; 0.00000; 0.86030;,
-0.50979; 0.00000; 0.86030;,
-0.50979; 0.00000; 0.86030;,
-0.50979; 0.00000; 0.86030;,
-0.50979; 0.00000; 0.86030;;

8;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 7, 5, 6;,
3; 10, 9, 8;,
3; 11, 9, 10;,
3; 14, 13, 12;,
3; 15, 13, 14;;
}
MeshTextureCoords {
16;
0.00000; -5.00000;,
2.00000; -5.00000;,
0.00000; 8.00000;,
2.00000; 8.00000;,
0.00000; 0.00000;,
2.00000; 0.00000;,
0.00000; 0.65820;,
2.00000; 0.65820;,
0.00000; -5.00000;,
2.00000; -5.00000;,
0.00000; 8.00000;,
2.00000; 8.00000;,
0.00000; 0.00000;,
2.00000; 0.00000;,
0.00000; 0.65820;,
2.00000; 0.65820;;
}

}

}

Frame frmpart50_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part50 {
8;
-12.45000; -4.28000; 31.81500;,
-14.18000; -4.28000; 30.81500;,
-12.45000; -3.88000; 31.81500;,
-14.18000; -3.88000; 30.81500;,
-14.08000; -4.28000; 34.63500;,
-15.81000; -4.28000; 33.63500;,
-14.08000; -3.88000; 34.63500;,
-15.81000; -3.88000; 33.63500;;

4;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 7, 5, 6;;

MeshMaterialList {
1;
4;
0,
0,
0,
0;
Material mat50 {
  0.687500; 0.687500; 0.687500; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "1BC4DCE4_c.bmp";
  }
  DiffuseTextureFileName  {
     "1BC4DCE4_c.bmp";
  }
  FS10Material {
    0.687500; 0.687500; 0.687500; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "1BC4DCE4_c.bmp";
    }
  }
}
}

MeshNormals {
8;
0.50045; 0.00000; -0.86577;,
0.50045; 0.00000; -0.86577;,
0.50045; 0.00000; -0.86577;,
0.50045; 0.00000; -0.86577;,
0.50044; 0.00000; -0.86577;,
0.50044; 0.00000; -0.86577;,
0.50044; 0.00000; -0.86577;,
0.50044; 0.00000; -0.86577;;

4;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 7, 5, 6;;
}
MeshTextureCoords {
8;
-9.00000; 0.00000;,
11.00000; 0.00000;,
-9.00000; 1.00000;,
11.00000; 1.00000;,
-9.00000; 0.00000;,
11.00000; 0.00000;,
-9.00000; 1.00000;,
11.00000; 1.00000;;
}

}

}

Frame frmpart51_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part51 {
12;
41.38000; -0.83000; -1.67000;,
38.54500; 0.51000; 6.64500;,
41.38000; 0.57000; -1.67000;,
38.54500; 1.91000; 6.64500;,
38.54500; 0.51000; 6.64500;,
33.11500; -0.03000; 9.81000;,
38.54500; 1.91000; 6.64500;,
33.11500; 1.37000; 9.81000;,
33.11500; -0.03000; 9.81000;,
25.75500; -2.29500; 14.06000;,
33.11500; 1.37000; 9.81000;,
25.75500; -0.89500; 14.06000;;

6;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 7, 5, 6;,
3; 10, 9, 8;,
3; 11, 9, 10;;

MeshMaterialList {
1;
6;
0,
0,
0,
0,
0,
0;
Material mat51 {
  0.687500; 0.687500; 0.687500; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "22A2163B_c.bmp";
  }
  DiffuseTextureFileName  {
     "22A2163B_c.bmp";
  }
  FS10Material {
    0.687500; 0.687500; 0.687500; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "22A2163B_c.bmp";
    }
  }
}
}

MeshNormals {
12;
-0.94650; 0.00000; -0.32271;,
-0.94650; 0.00000; -0.32271;,
-0.94650; 0.00000; -0.32271;,
-0.94650; 0.00000; -0.32271;,
-0.50357; 0.00000; -0.86395;,
-0.50357; 0.00000; -0.86395;,
-0.50357; 0.00000; -0.86395;,
-0.50357; 0.00000; -0.86395;,
-0.50006; 0.00000; -0.86599;,
-0.50006; 0.00000; -0.86599;,
-0.50006; 0.00000; -0.86599;,
-0.50006; 0.00000; -0.86599;;

6;
3; 2, 1, 0;,
3; 3, 1, 2;,
3; 6, 5, 4;,
3; 7, 5, 6;,
3; 10, 9, 8;,
3; 11, 9, 10;;
}
MeshTextureCoords {
12;
0.00000; 0.00000;,
4.00000; 0.00000;,
0.00000; 1.00000;,
4.00000; 1.00000;,
0.00000; 0.00000;,
2.00000; 0.00000;,
0.00000; 1.00000;,
2.00000; 1.00000;,
0.00000; 0.00000;,
3.50000; 0.00000;,
0.00000; 1.00000;,
3.50000; 1.00000;;
}

}

}

Frame frmpart52_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part52 {
10;
38.66500; 0.92500; 6.74000;,
33.23000; -0.81500; 9.90000;,
33.23000; 0.38500; 9.90000;,
33.23000; -0.81500; 9.90000;,
25.87000; -2.08000; 14.15000;,
33.23000; 0.38500; 9.90000;,
41.50000; -0.41500; -1.57500;,
38.66500; -0.27500; 6.74000;,
38.66500; 0.92500; 6.74000;,
38.66500; -0.27500; 6.74000;;

4;
3; 2, 1, 0;,
3; 5, 4, 3;,
3; 8, 7, 6;,
3; 0, 1, 9;;

MeshMaterialList {
1;
4;
0,
0,
0,
0;
Material mat52 {
  0.687500; 0.687500; 0.687500; 1.000000;;
  0.000000;
  0.000000; 0.000000; 0.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "5FD17CC8_c.bmp";
  }
  DiffuseTextureFileName  {
     "5FD17CC8_c.bmp";
  }
  FS10Material {
    0.687500; 0.687500; 0.687500; 1.000000;;
    0.000000; 0.000000; 0.000000;;
    64.000000;
    1.000000; 1.000000;
    1.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    64.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      0.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      1;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "5FD17CC8_c.bmp";
    }
  }
}
}

MeshNormals {
10;
-0.50263; 0.00000; -0.86450;,
-0.50263; 0.00000; -0.86450;,
-0.50263; 0.00000; -0.86450;,
-0.50006; 0.00000; -0.86599;,
-0.50006; 0.00000; -0.86599;,
-0.50006; 0.00000; -0.86599;,
-0.94650; 0.00000; -0.32271;,
-0.94650; 0.00000; -0.32271;,
-0.94650; 0.00000; -0.32271;,
-0.50263; 0.00000; -0.86450;;

4;
3; 2, 1, 0;,
3; 5, 4, 3;,
3; 8, 7, 6;,
3; 0, 1, 9;;
}
MeshTextureCoords {
10;
0.00000; 1.00000;,
4.00000; 0.00000;,
4.00000; 1.00000;,
0.00000; 0.00000;,
7.00000; 1.00000;,
0.00000; 1.00000;,
0.00000; 1.00000;,
8.00000; 0.00000;,
8.00000; 1.00000;,
0.00000; 0.00000;;
}

}

}

}

}
