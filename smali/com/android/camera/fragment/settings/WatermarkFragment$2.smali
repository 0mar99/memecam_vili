.class public Lcom/android/camera/fragment/settings/WatermarkFragment$2;
.super Ljava/lang/Object;
.source "WatermarkFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/settings/WatermarkFragment;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/settings/WatermarkFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/CameraIntentManager;->isStartActivityWhenLocked(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-static {p1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->access$100(Lcom/android/camera/fragment/settings/WatermarkFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {}, Lcom/android/camera/watermark/gen2/WaterMarkUtil2;->getDefaultWatermarkStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-static {p1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->access$200(Lcom/android/camera/fragment/settings/WatermarkFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v1, ""

    if-nez p1, :cond_2

    .line 6
    invoke-static {}, Lcom/android/camera/watermark/gen2/WaterMarkUtil2;->getDefaultWatermarkStr()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-static {v2}, Lcom/android/camera/fragment/settings/WatermarkFragment;->access$200(Lcom/android/camera/fragment/settings/WatermarkFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-static {p1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->access$100(Lcom/android/camera/fragment/settings/WatermarkFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-static {p1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->access$100(Lcom/android/camera/fragment/settings/WatermarkFragment;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-static {v1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->access$200(Lcom/android/camera/fragment/settings/WatermarkFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-static {p1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->access$100(Lcom/android/camera/fragment/settings/WatermarkFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-static {p1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->access$100(Lcom/android/camera/fragment/settings/WatermarkFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    .line 11
    iget-object v1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-static {v1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->access$100(Lcom/android/camera/fragment/settings/WatermarkFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 12
    iget-object v1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-static {v1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->access$300(Lcom/android/camera/fragment/settings/WatermarkFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    const v3, 0x7f120a26

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v5

    iget-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    .line 13
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v5, 0x7f0b002f

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v0

    .line 14
    invoke-virtual {v2, v3, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object p0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$2;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-static {p0}, Lcom/android/camera/fragment/settings/WatermarkFragment;->access$100(Lcom/android/camera/fragment/settings/WatermarkFragment;)Landroid/widget/EditText;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/Util;->showInputMethodDelayed(Landroid/view/View;)V

    return-void
.end method
