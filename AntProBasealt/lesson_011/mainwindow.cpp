#include "mainwindow.h"
#include "./ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent):
    QWidget(parent),
    ui(new Ui::MainWindow)

{
    ui->setupUi(this);
}

MainWindow::~MainWindow()
    {
        delete ui;
    }

void MainWindow::on_generateButton_clicked()
{
    QFile file(ui->lineEditWrite->text());
    file.open(QIODevice::WriteOnly);

    QXmlStreamWriter xmlWriter(&file);
    xmlWriter.setAutoFormatting(true);
    xmlWriter.writeStartDocument();
    xmlWriter.writeStartElement("resources");

    xmlWriter.writeStartElement("checkBox_1");
    xmlWriter.writeAttribute("boolean",
                             (ui->checkBox->isChecked() ? "true" : "false"));
    xmlWriter.writeCharacters(ui->lineEditCB1->text());
    xmlWriter.writeEndElement();

    xmlWriter.writeStartElement("checkBox_2");
    xmlWriter.writeAttribute("boolean",
                             (ui->checkBox_2->isChecked() ? "true" : "false"));
    xmlWriter.writeCharacters(ui->lineEditCB2->text());
    xmlWriter.writeEndElement();

    xmlWriter.writeStartElement("checkBox_3");
    xmlWriter.writeAttribute("boolean",
                             (ui->checkBox_3->isChecked() ? "true" : "false"));
    xmlWriter.writeCharacters(ui->lineEditCB3->text());
    xmlWriter.writeEndElement();

    xmlWriter.writeEndElement();

    xmlWriter.writeEndDocument();
    file.close();   // Закрываем файл
}


void MainWindow::on_dialogButton_clicked()
{
    QString filename = QFileDialog::getSaveFileName(this,
                                           tr("Save Xml"), ".",
                                           tr("Xml files (*.xml)"));
    if(filename != ""){
        ui->lineEditWrite->setText(filename);
    }
}

void MainWindow::on_readButton_clicked()
{
    QFile file(ui->lineEditRead->text());
    if (!file.open(QFile::ReadOnly | QFile::Text))
    {
        QMessageBox::warning(this,
                             "Ошибка файла",
                             "Не удалось открыть файл",
                             QMessageBox::Ok);
    } else {
        QXmlStreamReader xmlReader;
        xmlReader.setDevice(&file);
        xmlReader.readNext();

        while(!xmlReader.atEnd())
        {

            if(xmlReader.isStartElement())
            {
                if(xmlReader.name() == "checkBox_1")
                {
                    foreach(const QXmlStreamAttribute &attr, xmlReader.attributes()) {
                        if (attr.name().toString() == "boolean") {
                            QString attribute_value = attr.value().toString();
                            ui->checkBox->setChecked((QString::compare(attribute_value , "true") == 0) ? true : false);

                        }
                    }
                    ui->lineEditCB1->setText(xmlReader.readElementText());

                } else if (xmlReader.name() == "checkBox_2"){
                    foreach(const QXmlStreamAttribute &attr, xmlReader.attributes()) {
                        if (attr.name().toString() == "boolean") {
                            QString attribute_value = attr.value().toString();
                            ui->checkBox_2->setChecked((QString::compare(attribute_value , "true") == 0) ? true : false);

                        }
                    }
                    ui->lineEditCB2->setText(xmlReader.readElementText());
                } else if (xmlReader.name() == "checkBox_3"){
                    foreach(const QXmlStreamAttribute &attr, xmlReader.attributes()) {
                        if (attr.name().toString() == "boolean") {
                            QString attribute_value = attr.value().toString();
                            ui->checkBox_3->setChecked((QString::compare(attribute_value , "true") == 0) ? true : false);

                        }
                    }
                    ui->lineEditCB3->setText(xmlReader.readElementText());
                }
            }
            xmlReader.readNext();
        }
        file.close();
    }
}

void MainWindow::on_dialogReadButton_clicked()
{
    QString filename = QFileDialog::getOpenFileName(this,
                                       tr("Open Xml"), ".",
                                       tr("Xml files (*.xml)"));
    if(filename != ""){
        ui->lineEditRead->setText(filename);
    }
}
