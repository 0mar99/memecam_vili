.class public Lcom/android/camera/fragment/settings/SmartGuideFragment$1;
.super Ljava/lang/Object;
.source "SmartGuideFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/settings/SmartGuideFragment;->onPreferenceClick(Landroidx/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/settings/SmartGuideFragment;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/settings/SmartGuideFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/settings/SmartGuideFragment$1;->this$0:Lcom/android/camera/fragment/settings/SmartGuideFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/settings/SmartGuideFragment$1;->this$0:Lcom/android/camera/fragment/settings/SmartGuideFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/camera/fragment/settings/SmartGuideFragment;->access$002(Lcom/android/camera/fragment/settings/SmartGuideFragment;Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method
