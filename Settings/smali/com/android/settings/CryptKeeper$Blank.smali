.class public Lcom/android/settings/CryptKeeper$Blank;
.super Landroid/app/Activity;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Blank"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    const v0, 0x7f04001f

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper$Blank;->setContentView(I)V

    .line 118
    return-void
.end method
