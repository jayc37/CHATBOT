import mysql.connector
class querydatatable:
    def __init__(self):
        self.conn = mysql.connector.connect(host='localhost', user="root", passwd="16Dh110400", database="covid19")
        self.cur = self.conn.cursor()
        self.data = []

    def query_aboutcovid19table(self,val):
        try:
            self.cur.execute("select contents from about_covid19 where Covid19_ID = {}".format(val[0]))
            self.result = self.cur.fetchall()
            for x in self.result:
                message = '\n'.join(x)
            print(message)
            return message
        except:
            message = 'Hệ thống chưa nhận diện được câu hỏi, \n Hãy thử với cú pháp dạng corona là gì'
        return message
    def query_patientstable(self,val):
        try:
            self.cur.execute("select * from patients where code = '{}'".format(val[0]))
            self.result = self.cur.fetchall()
            for x in self.result:
                message = 'Bệnh nhân[{}] Ngày nhiễm: [{}] Giới tính: [{}] Tuổi: [{}] Nơi phát hiện: [{}]  Nơi điều trị: [{}] Tình trạng:[{}] Quốc tịch [{}]'.format(x[1],x[2],x[4],x[3],x[5],x[7],x[10],x[6])
                self.data.append(message)
            print(message)
            message = '\n'.join(self.data)
            return message
        except:
            message = 'Dữ liệu chưa lưu trữ kết quả cho câu hỏi của bạn.'
        return message
    def query_statisticsvietnamtable(self,val):
        try:
            self.cur.execute("select * from statistics where code = '{}'".format(val[0]))
            self.result = self.cur.fetchall()
            for x in self.result:              
                message = '[{}] có [{}] trường hợp:\n[{}] đang điều trị [{}] đã hồi phuc [{}] chết'.format(x[1],x[2],x[3],x[4],x[5])
            return message
        except:
            message = 'Hệ thống chưa nhận diện được câu hỏi của bạn.\n Có thể tên tỉnh thành bạn hỏi chưa có. Thử với câu hỏi "Số người nhiễm bệnh/chết/đang điều trị ở tỉnh thành"'
        return message
    def query_worldtable(self,val):
        try:
            self.cur.execute("select * from world where code = '{}'".format(val[0]))
            self.result = self.cur.fetchall()
            for x in self.result:
                print(len(x))
                data = []
                dat = []
                for i in range(len(x)):
                    data.append(x[i])
                for d in data:
                    if d == '' or d == ' ':
                        d =  d.replacew(' ','0')
                        d =  d.replacew('','0')
                    dat.append(d)
                message = '\n[{}] có tổng [{}] trường hợp nhiễm, [{}] đã chết, [{}] đã hồi phục:\n Hiện tại có : [{}] nhiễm mới [{}] mới tử vong.'.format(dat[1],dat[2],dat[4],dat[6],dat[3],dat[5])
            print(message)
            return message
        except:
            pass