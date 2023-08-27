import requests
from bs4 import BeautifulSoup
import psycopg2
from config import config
from flask import Flask ,request,jsonify

app = Flask (__name__)


conn = None
try:
    # read connection parameters
    params = config()

    # connect to the PostgreSQL server
    print('Connecting to the PostgreSQL database...')
    conn = psycopg2.connect(**params)
    
    # create a cursor
    cur = conn.cursor()
    
    page = requests.get('https://wuzzuf.net/search/jobs/?q=software+engineer&a=navbl')

    #get the content of the page
    src = page.content

    #transform the content
    soup = BeautifulSoup(src,"lxml")

    job_titles = soup.find_all("h2",{"class":"css-m604qf"})
    company_names = soup.find_all("a",{"class":"css-17s97q8"})
    location_names = soup.find_all("span",{"class":"css-5wys0k"})
    job_skills = soup.find_all("div",{"class":"css-y4udm8"})

    #insert the data into db
    
    # for i in range(len(job_titles)):
    #     sql_insert_query =  """ INSERT INTO jobs (job_title, skills, location,company) VALUES (%s,%s,%s,%s)"""
    #     record_to_insert = (str(job_titles[i].text),str(job_skills[i].text),str(location_names[i].text),str(company_names[i].text))
    #     cur.execute(sql_insert_query, record_to_insert)
    #     conn.commit()


    #fetch the data from db to display it
    @app.route("/getjobs")
    def get_jobs():
        cur.execute("SELECT * FROM jobs ORDER BY id")
        jobs_records = cur.fetchall()
        jobs=[]
        for  row in jobs_records:
            jobs.append( {
                 "id" : row[0],
                 "job_title" : row[1],
                 "skills" : row[2],
                 "location" : row[3],
                 "company" : row[4],
            })
            
        return jsonify(jobs),200
    
except (Exception, psycopg2.DatabaseError,psycopg2.InterfaceError) as error: 
    print(error)


if __name__ == "__main__":
    app.run(debug=True)