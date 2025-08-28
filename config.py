class Config:
    SECRET_KEY  = 'KDJFSDKSFJFJDKSLAÑDSLJSHHSHHHKJHDKJFGHIODLGJGKFKHHSHSH'
    DEBUG       = True
    
class DevelopmentConfig(Config):
    MYSQL_HOST      = 'localhost'
    MYSQL_USER      = 'root'
    MYSQL_PASSWORD  = 'mysql'
    MYSQL_DB        = 'kittools'

config = {
    'development': DevelopmentConfig
}