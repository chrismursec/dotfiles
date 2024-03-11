import subprocess

output = subprocess.run(["yabai","-m","query","--displays"],capture_output=True,text=True)
output_text = output.stdout.strip()
output_obj = eval(output_text)
uuid = (output_obj[0]["uuid"])


if uuid == "37D8832A-2D66-02CA-B9F7-8F30A301B230":
    subprocess.run(["yabai","-m","config","top_padding","25"])
    print("Padding set to 25")
else:
    subprocess.run(["yabai","-m","config","top_padding","50"])
    print("Padding set to 50")
