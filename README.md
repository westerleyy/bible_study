#### Bible Study

### ¿Say What?

To all my amigx out there who have known me for a while, the decision to do a textual analysis of the Bible may come as a surprise, or not. But the truth is, religion was a big part of my life. As for now, I will leave it to you to decide. I have decided to apply what I learnt and know about Natural Language Processing in R, which basically sees text as a type of data to be analyzed, to the Bible.  
  
### Premise
  
The Bible has been on the world's bestseller lists for millenia, I think. There have been many revisions to it, and it has been translated into so many different languages. But can we quantitatively track its changes, or consistency?  
  
This is where I come in.  
  
Beyond the simple Old and New Testaments, the Bible can be further subdivided into various groups. One particular group stands out: The Gospels. They are a collection of four books written by four of Jesus' apostles: Mark, Matthew, Luke, and John. The tl;dr of these books is that individually, they cover the life and messages of Jesus Christ but written from a third-person's perspective. It is widely agreed that they cover the same topics and issues albeit with some variations here and there. John is widely regarded as the book that is the most different from the other three.  
  
The other issue is this. The Bible has undergone so many revisions and seen so many versions. Some of the most enduring ones are the King James Version (KJV), New International Version (NIV), English Standard Version (ESV) etc. Naturally, each version is translated and phrased slightly differently while retaining the meaning and significance of the Word.  
  
Given all of these things, the question is: How are they all different from one another? Can we put a number to the differences? More specifically, I want to answer the following question: 
  
Can a machine learning model such as a Random Forest identify which of the four Gospel books and version it came from?  
  
### ¿Why R and not Python?  
  
I prefer R, just like I will take acai over pitaya anyday. I can do it in Python, but I am still getting acquainted with the NLP space and R just comes more naturally to me. Feel free to replicate in Python. I hope you get the same results.  
  
### Methods  
  
1. Cosine Similarity
2. Principal Component Analysis
3. Random Forests  