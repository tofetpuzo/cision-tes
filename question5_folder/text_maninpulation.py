import re


def text_manipulation():
    with open("cision/cision_questions/question5_folder/server.log", "r") as file:
        text = file.read()
        pattern = re.compile(
            r"[a-zA-Z-]+[\w ] [a-zA-Z-][\w ] \d\d\d\d-\d\d-\d\d [a-zA-Z-]+ [T[0-9]+:[\d]+:[\d]+")
        format_text = re.findall(pattern, text)
        words = " \n".join(format_text).split(",")
        file.close()

    return([print(w) for w in words])


if __name__ == "__main__":
    text_manipulation()


# Output:
    # Jacob on 2002-01-03 visited T22:26:18
    # Mark on 2002-02-14 visited T22:26:18
    # Samantha on 1930-04-21 visited T22:26:18
    # Lola on 2022-03-23 visited T22:26:39
    # Loving on 2003-03-03 visited T22:26:18
    # Agnes on 1902-02-02 visited T22:26:39
