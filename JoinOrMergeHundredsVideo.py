#coding:UTF-8
import os
files2 = os.listdir('C:\\Users\\niliu\\Downloads\\mergefils\\.')

def renameFiles():
    for filename in files2:
        basename, extension= os.path.splitext(filename)
        if len(filename)>len(extension) + 1:            
            try:
                if(int(basename[len(basename)-1:] )): #最后一位是非0数字
                    try:
                        if(int(basename[len(basename)-2:])):#倒数第二位不是0，至少两位数字，ex 11, 121
                            try:
                                if(int(basename[len(basename)-3:])):
                                    #倒数第三位不是0，至少3位
                                    #case 1: 111, 
                                    # case 2: ?111
                                    #这里我们只考虑最多3位数，所以是case 1.
                                    os.rename('C:\\Users\\niliu\\Downloads\\mergefils\\' + filename, 'C:\\Users\\niliu\\Downloads\\mergefils\\'+basename[len(basename)-3:]+extension)
                                else:
                                    #case 1: 倒数第三位为0
                                    # 这里我们暂时只考虑最多三位数的情况
                                    pass
                            except Exception as e:
                                #第三位不是数字，只考虑最后2位数字位
                                os.rename('C:\\Users\\niliu\\Downloads\\mergefils\\' + filename, 'C:\\Users\\niliu\\Downloads\\mergefils\\'+basename[len(basename)-2:]+extension)
                        else:#倒数第二位是0，最后一位不是0，或者没有倒数第二位
                            #case 1: 只有一位
                            #case 2: 为简化，这里最多考虑3位数，三位, 104, 
                            print 'test2'
                            if(int(basename[len(basename)-3:])): #case 2
                                os.rename('C:\\Users\\niliu\\Downloads\\mergefils\\' + filename, 'C:\\Users\\niliu\\Downloads\\mergefils\\'+basename[len(basename)-3:]+extension)
                            else: #case 1
                                print 'test'
                                os.rename('C:\\Users\\niliu\\Downloads\\mergefils\\' + filename, 'C:\\Users\\niliu\\Downloads\\mergefils\\'+basename[len(basename)-1:]+extension)
                    except Exception as e: #倒数第二位不是数字
                        print e
                        print filename
                        os.rename('C:\\Users\\niliu\\Downloads\\mergefils\\' + filename, 'C:\\Users\\niliu\\Downloads\\mergefils\\'+basename[len(basename)-1:]+extension)

                else:#最后一位是0
                    try:
                        if(int(basename[len(basename)-2:])):#倒数第二位不是0的数字，至少两位数字，ex 10
                            try:
                                if(int(basename[len(basename)-3:])):#倒数第三位非0数字
                                    os.rename('C:\\Users\\niliu\\Downloads\\mergefils\\' + filename, 'C:\\Users\\niliu\\Downloads\\mergefils\\'+basename[len(basename)-3:]+extension)
                                else:#仅2位
                                    os.rename('C:\\Users\\niliu\\Downloads\\mergefils\\' + filename, 'C:\\Users\\niliu\\Downloads\\mergefils\\'+basename[len(basename)-2:]+extension)
                            except Exception as e: #第三位不是数字
                                os.rename('C:\\Users\\niliu\\Downloads\\mergefils\\' + filename, 'C:\\Users\\niliu\\Downloads\\mergefils\\'+basename[len(basename)-2:]+extension)
                        else:#倒数第二位0，或者没有倒数第二位，ex 0 or 100
                            try:
                                if(int(basename[len(basename)-3:])):
                                    os.rename('C:\\Users\\niliu\\Downloads\\mergefils\\' + filename, 'C:\\Users\\niliu\\Downloads\\mergefils\\'+basename[len(basename)-3:]+extension)
                                else: #这里按理来说不会进来，在上层的异常处理中
                                    os.rename('C:\\Users\\niliu\\Downloads\\mergefils\\' + filename, 'C:\\Users\\niliu\\Downloads\\mergefils\\'+'0'+extension)
                            except Exception as e: #第三位不是数字，00 or 0,按理不存在
                                os.rename('C:\\Users\\niliu\\Downloads\\mergefils\\' + filename, 'C:\\Users\\niliu\\Downloads\\mergefils\\'+'0'+extension)
                    except Exception as e:
                        os.rename('C:\\Users\\niliu\\Downloads\\mergefils\\' + filename, 'C:\\Users\\niliu\\Downloads\\mergefils\\'+'0'+extension)
            except Exception as e:
                print e
                print filename
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
