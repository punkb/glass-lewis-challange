
#CASE1
Job_list_case1 = [["a"]]
Job_list_case1_expected = ["a"]

Job_list_case2 = [["a"], 
				  ["b"], 
				  ["c"]] 

Job_list_case2_expected = ["a", "b", "c"]



Job_list_case3 = [["a"], 
				  ["b", "c"], 
				  ["c"]]

Job_list_case3_expected = ["a", "c", "b"]




Job_list_case4 = [["a"], 
                  ["b", "c"], 
                  ["c", "f"], 
                  ["d", "a"], 
                  ["e", "b"], 
                  ["f"]]

Job_list_case4_expected = ["a","f", "c", "b", "d", "e"]


Job_list_case5 = [["a"], 
                  ["b"], 
                  ["c", "c"]]
# Job_list_case5_expected = SHould give dependancy error

Job_list_case6 = [["a"], 
                  ["b", "c"], 
                  ["c", "f"], 
                  ["d", "a"], 
                  ["e"], 
                  ["f", "b"]]
# Job_list_case5_expected = SHould give dependancy error



Job_list_case7 = [["a"], 
                  ["b", "c"], 
                  ["c", "b"]]
# Job_list_case5_expected = SHould give dependancy error



Job_list_case8 = [["a", " "]]

Job_list_case8_expected = [" ", "a"]

