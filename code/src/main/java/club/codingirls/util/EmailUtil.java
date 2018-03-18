package club.codingirls.util;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;
import java.util.UUID;

public class EmailUtil {
    public static void register(String to, String activationCode) {
        String title = "志愿者服务中心 帐号激活";
        String url = "http://localhost/activation?code=" + activationCode;
        String html = "<h3><a href=" + url + ">点击激活</a></h3><br/>若打不开链接可将地址复制到浏览器地址栏中进行激活  " + url;
        send(to, title, html);
    }

    public static void resetPassword(String to) {
        String title = "密码已被初始化";
        String html = "<h3>您的密码已被初始化为"+Constant.DEFAULT_PASSWORD+"</h3>";
        send(to, title, html);
    }

    private static void send(String to, String title, String html) {
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
            message.setSubject(title);
            // 发送 HTML 消息, 可以插入html标签


            message.setContent(html, "text/html;charset=GB2312");

            // 发送消息
            Transport.send(message);
            System.out.println("邮件发送成功");
        } catch (MessagingException mex) {
            mex.printStackTrace();
        }
    }


    public static void main(String[] args) {
        EmailUtil.register("aceysx@163.com", UUID.randomUUID().toString().replace("-", ""));
    }


}