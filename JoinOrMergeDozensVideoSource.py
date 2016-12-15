import os
files2 = os.listdir('C:\\Users\\niliu\\Downloads\\mergefils\\.')
#这个文件用来处理切片ids小于100的视频
def renameFiles():
    for filename in files2:
        basename, extension= os.path.splitext(filename)
        if len(filename)>len(extension) + 1:            
            try:
                # print len(filename)
                # print basename
                #if file name end with number
                if(int(basename[len(basename)-1:] )):
                    if(int(basename[len(basename)-2:])):
                        os.rename('C:\\Users\\niliu\\Downloads\\mergefils\\' + filename, 'C:\\Users\\niliu\\Downloads\\mergefils\\'+basename[len(basename)-2:].lstrip()+extension)
                    else:
                        os.rename('C:\\Users\\niliu\\Downloads\\mergefils\\' + filename, 'C:\\Users\\niliu\\Downloads\\mergefils\\'+basename[len(basename)-1:].lstrip()+extension)
                else:
                    if(int(basename[len(basename)-2:])):
                        os.rename('C:\\Users\\niliu\\Downloads\\mergefils\\' + filename, 'C:\\Users\\niliu\\Downloads\\mergefils\\'+basename[len(basename)-2:].lstrip()+extension)
                    else:
                        os.rename('C:\\Users\\niliu\\Downloads\\mergefils\\' + filename, 'C:\\Users\\niliu\\Downloads\\mergefils\\'+'0'+extension)
            except Exception as e:
                print e
                os.rename('C:\\Users\\niliu\\Downloads\\mergefils\\' + filename, 'C:\\Users\\niliu\\Downloads\\mergefils\\'+'0'+extension)




def concatFiles():
    result= "concat:"
    files2.reverse()
    fileLeng= len(files2)
    loopCount=0
    for file in files2:
        loopCount=loopCount+1
        if(loopCount<fileLeng):
            result = result + file + '|'
        else:
            result = result + file
    # print result
    return '"'+result + '"'

if __name__ == '__main__':
    renameFiles()
    files2 = os.listdir('C:\\Users\\niliu\\Downloads\\mergefils\\.')
    print(concatFiles())
