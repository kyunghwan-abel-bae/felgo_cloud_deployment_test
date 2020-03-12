#ifndef AUDIORECODER_H
#define AUDIORECODER_H

#include <QObject>
#include <QDebug>

class AudioRecoder : public QObject
{
    Q_OBJECT
public:
    explicit AudioRecoder(QObject *parent = nullptr);

    Q_INVOKABLE QString startRecord();
signals:

public slots:
};

#endif // AUDIORECODER_H
