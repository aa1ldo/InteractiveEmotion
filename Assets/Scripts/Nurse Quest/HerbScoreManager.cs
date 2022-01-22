using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HerbScoreManager : MonoBehaviour
{
    private static HerbScoreManager _instance;

    public static HerbScoreManager Instance { get { return _instance; } }

    public int score;

    private void Awake()
    {
        if (_instance != null && _instance != this)
        {
            Destroy(this.gameObject);
        }
        else
        {
            _instance = this;
        }
    }
}
