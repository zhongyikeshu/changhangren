package cn.yubo.chr.domain;



/**
 * Xuanke entity. @author MyEclipse Persistence Tools
 */

public class Xuanke  implements java.io.Serializable {


    // Fields    

     private String id;
     private Student student;
     private Kecheng kecheng;
     private Integer score;


    // Constructors

    /** default constructor */
    public Xuanke() {
    }

	/** minimal constructor */
    public Xuanke(String id, Student student, Kecheng kecheng) {
        this.id = id;
        this.student = student;
        this.kecheng = kecheng;
    }
    
    /** full constructor */
    public Xuanke(String id, Student student, Kecheng kecheng, Integer score) {
        this.id = id;
        this.student = student;
        this.kecheng = kecheng;
        this.score = score;
    }

   
    // Property accessors

    public String getId() {
        return this.id;
    }
    
    public void setId(String id) {
        this.id = id;
    }

    public Student getStudent() {
        return this.student;
    }
    
    public void setStudent(Student student) {
        this.student = student;
    }

    public Kecheng getKecheng() {
        return this.kecheng;
    }
    
    public void setKecheng(Kecheng kecheng) {
        this.kecheng = kecheng;
    }

    public Integer getScore() {
        return this.score;
    }
    
    public void setScore(Integer score) {
        this.score = score;
    }
   








}