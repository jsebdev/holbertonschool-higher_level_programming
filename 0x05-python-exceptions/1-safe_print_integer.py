def safe_print_integer(value):
    ret = True
    try:
        print("{:d}".format(value))
    except ValueError:
        ret = False
    return ret
