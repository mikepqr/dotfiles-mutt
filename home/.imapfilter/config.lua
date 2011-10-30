status, mypass = pipe_from("/Users/mike/usr/bin/get_pw imaps.mpe.mpg.de")

MPE = IMAP {
    server = 'imaps.mpe.mpg.de',
    username = 'williams',
    password = mypass,
    ssl = 'ssl3'
}

all = MPE.INBOX:select_all()

msgs = all:contain_to('astrolrner@yahoogroups.com')
msgs:move_messages(MPE['lists.astrolrnr'])
