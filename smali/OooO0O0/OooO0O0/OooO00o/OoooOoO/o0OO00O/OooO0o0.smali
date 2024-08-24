.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0OO00O/OooO0o0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

.field private final synthetic OooO0O0:Lcom/android/camera/fragment/music/LiveMusicInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;Lcom/android/camera/fragment/music/LiveMusicInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0OO00O/OooO0o0;->OooO00o:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0OO00O/OooO0o0;->OooO0O0:Lcom/android/camera/fragment/music/LiveMusicInfo;

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0OO00O/OooO0o0;->OooO00o:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0OO00O/OooO0o0;->OooO0O0:Lcom/android/camera/fragment/music/LiveMusicInfo;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->OooO00o(Lcom/android/camera/fragment/music/LiveMusicInfo;Landroid/media/MediaPlayer;)V

    return-void
.end method
