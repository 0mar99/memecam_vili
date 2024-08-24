.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0O0/OooO0OO/OooO0O0/OooO00o/OooO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;

.field private final synthetic OooO0O0:I

.field private final synthetic OooO0OO:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;ILjava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0O0/OooO0OO/OooO0O0/OooO00o/OooO;->OooO00o:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;

    iput p2, p0, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0O0/OooO0OO/OooO0O0/OooO00o/OooO;->OooO0O0:I

    iput-object p3, p0, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0O0/OooO0OO/OooO0O0/OooO00o/OooO;->OooO0OO:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0O0/OooO0OO/OooO0O0/OooO00o/OooO;->OooO00o:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;

    iget v1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0O0/OooO0OO/OooO0O0/OooO00o/OooO;->OooO0O0:I

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0O0/OooO0OO/OooO0O0/OooO00o/OooO;->OooO0OO:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->OooO00o(ILjava/util/concurrent/CountDownLatch;)V

    return-void
.end method
