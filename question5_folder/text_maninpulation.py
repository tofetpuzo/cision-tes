import re

def text_manipulation():
    with open("cision/cision_questions/question5_folder/server.log", "r") as file:
        text = file.read()
        pattern = re.compile(
            r"[a-zA-Z-]+[\w ] [a-zA-Z-][\w ] \d\d\d\d-\d\d-\d\d [a-zA-Z-]+ [T[0-9]+:[\d]+:[\d]+")
        format_text = re.findall(pattern, text)
        words = " ".join(format_text).split(",")

    return([print(w) for w in words])




if __name__ == "__main__":
   text_manipulation()
    
