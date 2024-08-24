.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0O0/OooO00o/OooO0OO/OooO0o0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

.field private final synthetic OooO0O0:Z

.field private final synthetic OooO0OO:Z

.field private final synthetic OooO0Oo:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0O0/OooO00o/OooO0OO/OooO0o0;->OooO00o:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    iput-boolean p2, p0, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0O0/OooO00o/OooO0OO/OooO0o0;->OooO0O0:Z

    iput-boolean p3, p0, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0O0/OooO00o/OooO0OO/OooO0o0;->OooO0OO:Z

    iput-boolean p4, p0, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0O0/OooO00o/OooO0OO/OooO0o0;->OooO0Oo:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0O0/OooO00o/OooO0OO/OooO0o0;->OooO00o:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    iget-boolean v1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0O0/OooO00o/OooO0OO/OooO0o0;->OooO0O0:Z

    iget-boolean v2, p0, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0O0/OooO00o/OooO0OO/OooO0o0;->OooO0OO:Z

    iget-boolean p0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0O0/OooO00o/OooO0OO/OooO0o0;->OooO0Oo:Z

    check-cast p1, Lcom/android/camera/protocol/protocols/MainContentProtocol;

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->OooO00o(ZZZLcom/android/camera/protocol/protocols/MainContentProtocol;)V

    return-void
.end method
