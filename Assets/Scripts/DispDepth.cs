using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering;

public class DispDepth : MonoBehaviour
{
    public Material mat;
    // Start is called before the first frame update
    void Start()
    {
        GetComponent<Camera>().depthTextureMode |= DepthTextureMode.Depth;   
    }

    public void OnRenderImage(RenderTexture source, RenderTexture dest)
    {                
        Graphics.Blit(source, dest, mat);
    }
}
