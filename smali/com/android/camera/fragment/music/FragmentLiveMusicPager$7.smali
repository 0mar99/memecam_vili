.class public Lcom/android/camera/fragment/music/FragmentLiveMusicPager$7;
.super Ljava/lang/Object;
.source "FragmentLiveMusicPager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->startDownloadAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$7;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$7;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    invoke-static {p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->access$1300(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$7;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    invoke-static {p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->access$1300(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$7;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    invoke-static {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->access$1400(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)Z

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
