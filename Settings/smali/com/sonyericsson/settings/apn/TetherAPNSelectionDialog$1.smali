.class Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog$1;
.super Ljava/lang/Object;
.source "TetherAPNSelectionDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog$1;->this$0:Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 87
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog$1;->this$0:Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/settings/apn/TetherAPNSelectionDialog;->finish()V

    .line 89
    return-void
.end method
