using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ChangeTexture : MonoBehaviour
{

    void OnGui()
    {
        if (GUI.Button(new Rect(10, 10, 200, 50), "OverDraw"))
        {
            Camera.main.SetReplacementShader(Shader.Find("Custom/Overdraw"), "RenderType");
        }

        if (GUI.Button(new Rect(10, 70, 200, 50), "Reset"))
        {
            Camera.main.ResetReplacementShader();
        }
    }
}
