package club.codingirls.util;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;
import java.util.UUID;

public class EmailUtil {
    public static void send(String to, String activationCode) {

        // 发件人电子邮箱
        String from = "748890247@qq.com";

        // 指定发送邮件的主机为 smtp.qq.com
        String host = "smtp.qq.com";  //QQ 邮件服务器

        // 获取系统属性
        Properties properties = System.getProperties();

        // 设置邮件服务器
        properties.setProperty("mail.smtp.host", host);

        //用户密码认证
        properties.put("mail.smtp.auth", "true");

        //配置SSL加密方式
        properties.put("mail.smtp.port", "587");

        //调试模式
        //properties.put("mail.debug", "true");

        // 获取默认session对象
        Session session = Session.getDefaultInstance(properties, new Authenticator() {
            public PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("748890247@qq.com", "mranikqrrugdbecd"); //发件人邮件用户名、密码
            }
        });

        try {
            // 创建默认的 MimeMessage 对象
            MimeMessage message = new MimeMessage(session);

            // Set From: 头部头字段
            message.setFrom(new InternetAddress(from));

            // Set To: 头部头字段
            message.addRecipient(Message.RecipientType.TO,
                    new InternetAddress(to));

            // Set Subject: 头部头字段
            message.setSubject("Codingirls 帐号激活链接");
            // 发送 HTML 消息, 可以插入html标签
            String html = "<a href='http://localhost:8080/activation?code=" + activationCode + "'>点击激活</a>";

            message.setContent(html, "text/html;charset=GB2312");

            // 发送消息
            Transport.send(message);
            System.out.println("邮件发送成功");
        } catch (MessagingException mex) {
            mex.printStackTrace();
        }
    }

    public static void main(String[] args) {
        EmailUtil.send("aceysx@163.com", UUID.randomUUID().toString().replace("-",""));
    }
}