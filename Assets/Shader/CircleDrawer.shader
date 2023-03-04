Shader "Custom/CircleDrawer"
{
    SubShader
    {
        Tags { "RenderType"="Opaque" }
        LOD 200

        CGPROGRAM
        #pragma surface surf Standard
        #pragma target 3.0

        struct Input
        {
            float3 worldPos;
        };

        void surf (Input IN, inout SurfaceOutputStandard o)
        {
            float dist = distance( fixed3(0, 0, 0), IN.worldPos);
            float val = abs(sin(dist * 3.0));
            if (val > 0.98){
                o.Albedo = fixed4(1, 1, 1, 1);
            }
            else{
                o.Albedo = fixed4(110/225.0, 87/225.0, 139/225.0, 1);
            }
        }
        ENDCG
    }
    FallBack "Diffuse"
}
