# Katie Simon
# Original text file downloaded from: http://ope.ed.gov/accreditation/GetDownloadFile.aspx

def main():

    source_file = 'Accreditation_2014_06.txt'
    target_file = 'jobs_US_univ_scrubbed.csv'
    s = open(source_file,'rU')
    t = open(target_file,'w')

    i = 0
    y = 0
    
    institution_ids = []

    for line in s:
        
        d = line.rstrip('\n')
        x = d[:11]
        values = d.split('\t')

        inst_id = d[:6]
        school_name = values[1]
        
        if ((x.upper() == 'INSTITUTION') and (y == 0)):
            y = 1
            i += 1

        elif ((inst_id.isdigit()) and (inst_id not in institution_ids) and (y == 1)):
            
            if (school_name[0] == '"') or (school_name[0] == "'"):
                school_name = school_name[1:-1]
            
            new_line = ''
            new_line += inst_id + ',' + school_name + '\n'
            t.write(new_line)

            institution_ids.append(inst_id)
            i += 1

        else:
            continue

            
    s.close()
    t.close()
    print( "\nFile created. %d records written. " % (i) )

main()
