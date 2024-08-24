.class public Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity$2;
.super Ljava/lang/Object;
.source "PrivacyWatermarkEditActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;


# direct methods
.method public constructor <init>(Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity$2;->this$0:Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity$2;->this$0:Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->access$000(Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;Ljava/lang/String;)V

    return-void
.end method
