Shader "Custom/Water"
{
    Properties
    {
        _MainTex ("WaterTexture", 2D) = "White"{}
    }
    SubShader
    {
        Tags { "RenderType"="Opaque" }
        LOD 200

        CGPROGRAM
        #pragma surface surf Standard fullforwardshadows
        #pragma target 3.0

        sampler2D _MainTex;

        struct Input
        {
            float2 uv_MainTex;
        };

        void surf (Input IN, inout SurfaceOutputStandard o)
        {
            fixed2 uv = IN.uv_MainTex;
            uv.x += 0.5 * _Time.x;
            uv.y += 0.6 * _Time;
            o.Albedo = tex2D(_MainTex, uv);
        }
        ENDCG
    }
    FallBack "Diffuse"
}
