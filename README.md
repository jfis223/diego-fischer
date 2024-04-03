## Diego Fischer - Ruby on Rails Website

### Installation

Run the following command to install the node version declared in the `.nvmrc`
file for this project:

```shell
npm install
bundle install
rails db:migrate
```

### Running the project

```shell
rails server
```

### Environment variables

Create a `.env` file with your environment variables with the following defaults

```
CLOUDINARY_URL=XXXXX
EMAIL=XXXXX
PASSWORD=XXXXX
MAILGUN_API_KEY=XXXXX
MAILGUN_DOMAIN=XXXXX
MAILGUN_PUBLIC_KEY=XXXXX
MAILGUN_SMTP_LOGIN=XXXXX
MAILGUN_SMTP_PASSWORD=XXXXX
MAILGUN_SMTP_PORT=XXXXX
MAILGUN_SMTP_SERVER=XXXXX
SENDGRID_API_KEY=XXXXX
GMAIL_USERNAME=XXXXX
GMAIL_PASSWORD=XXXXX
CAPTCHA_SITE_KEY=XXXXX
CAPTCHA_SECRET_KEY=XXXXX
GTAG=XXXXX
```

