.class public final synthetic LOooO0O0/OooO0O0/OooO00o/Oooooo0/OooO0O0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field private final synthetic OooO00o:Landroid/widget/VideoView;

.field private final synthetic OooO0O0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/VideoView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/Oooooo0/OooO0O0;->OooO00o:Landroid/widget/VideoView;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/Oooooo0/OooO0O0;->OooO0O0:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/Oooooo0/OooO0O0;->OooO00o:Landroid/widget/VideoView;

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/Oooooo0/OooO0O0;->OooO0O0:Landroid/view/View;

    invoke-static {v0, p0, p1}, Lcom/android/camera/preferences/EffectComparisonPreference;->OooO00o(Landroid/widget/VideoView;Landroid/view/View;Landroid/media/MediaPlayer;)V

    return-void
.end method
