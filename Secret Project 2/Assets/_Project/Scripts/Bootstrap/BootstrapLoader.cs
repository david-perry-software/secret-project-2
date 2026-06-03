using UnityEngine;
using UnityEngine.SceneManagement;


namespace SecretProject2.Bootstrap
{
    public class BootstrapLoader : MonoBehaviour
    {
        [SerializeField] private string nextSceneName = "PoC_Level01";

        private void Start()
        {
            Debug.Log($"BootstrapLoader ready. Target scene: {nextSceneName}");
        }

        private void Update()
        {
            if (Input.GetKeyDown(KeyCode.F5))
            {
                Debug.Log($"Loading scene '{nextSceneName}' from Bootstrap.");
                SceneManager.LoadScene(nextSceneName);
            }
        }
    }
}
