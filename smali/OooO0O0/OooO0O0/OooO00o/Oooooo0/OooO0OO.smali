.class public final synthetic LOooO0O0/OooO0O0/OooO00o/Oooooo0/OooO0OO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# instance fields
.field private final synthetic OooO00o:Landroid/widget/VideoView;

.field private final synthetic OooO0O0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/VideoView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/Oooooo0/OooO0OO;->OooO00o:Landroid/widget/VideoView;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/Oooooo0/OooO0OO;->OooO0O0:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/Oooooo0/OooO0OO;->OooO00o:Landroid/widget/VideoView;

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/Oooooo0/OooO0OO;->OooO0O0:Landroid/view/View;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/camera/preferences/MoreModeStylePreference;->OooO00o(Landroid/widget/VideoView;Landroid/view/View;Landroid/media/MediaPlayer;II)Z

    move-result p0

    return p0
.end method
