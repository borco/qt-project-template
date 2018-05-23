#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "foo/dummy.h"

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    m_dummy = new foo::Dummy(this);
    ui->label->setText(m_dummy->name());
}

MainWindow::~MainWindow()
{
    delete ui;
}
