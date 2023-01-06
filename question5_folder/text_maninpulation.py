def text_manipulation():
    with open("server.log", "r") as file:
        text = file.read()
        format_text = text.removeprefix("[]", "")

    print(format_text)
    
text_manipulation()
