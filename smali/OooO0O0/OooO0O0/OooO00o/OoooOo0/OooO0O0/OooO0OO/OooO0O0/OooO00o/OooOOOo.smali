.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0O0/OooO0OO/OooO0O0/OooO00o/OooOOOo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;

.field private final synthetic OooO0O0:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

.field private final synthetic OooO0OO:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0O0/OooO0OO/OooO0O0/OooO00o/OooOOOo;->OooO00o:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0O0/OooO0OO/OooO0O0/OooO00o/OooOOOo;->OooO0O0:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    iput-boolean p3, p0, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0O0/OooO0OO/OooO0O0/OooO00o/OooOOOo;->OooO0OO:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0O0/OooO0OO/OooO0O0/OooO00o/OooOOOo;->OooO00o:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;

    iget-object v1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0O0/OooO0OO/OooO0O0/OooO00o/OooOOOo;->OooO0O0:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    iget-boolean p0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0O0/OooO0OO/OooO0O0/OooO00o/OooOOOo;->OooO0OO:Z

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->OooO00o(Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;Z)V

    return-void
.end method
