This is demo project for GototEngine ViewportTexture bug in Web Export.

LIVE demo: https://mborecki.github.io/godot-viewport-web-test/

## Step to reproduce

Correct behavior (in Debug and in Win Export):
1. Run main scene `main.tscn`
2. Use buttons to change displayed SubViewports
3. Left view ('View1') starts displaying previews subviewport (path printed above is correct)
4. Right view ('View2') starts displaying new subviewport (path printed above is correct)

Incorrect behavior (Web Export):
1. Export to Web and run main scene `main.tscn`
2. Use buttons to change displayed SubViewports
3. Left view ('View1') starts displaying new subviewport (BUT: path printed above is for old viewport)
4. Right view ('View2') starts displaying new subviewport (path printed above is correct)
