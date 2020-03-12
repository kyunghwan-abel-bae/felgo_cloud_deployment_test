#include "audio_recoder.h"

AudioRecoder::AudioRecoder(QObject *parent) : QObject(parent)
{

}

QString AudioRecoder::startRecord() {
    qDebug() << "cpp";
    return "Hello World";
}
