.class public final Lcom/google/android/datatransport/runtime/dagger/internal/SingleCheck;
.super Ljava/lang/Object;
.source "SingleCheck.java"

# interfaces
.implements LOooO0Oo/OooO00o/OooO0OO;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LOooO0Oo/OooO00o/OooO0OO<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z

.field public static final UNINITIALIZED:Ljava/lang/Object;


# instance fields
.field public volatile instance:Ljava/lang/Object;

.field public volatile provider:LOooO0Oo/OooO00o/OooO0OO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO0Oo/OooO00o/OooO0OO<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/runtime/dagger/internal/SingleCheck;->UNINITIALIZED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LOooO0Oo/OooO00o/OooO0OO;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0Oo/OooO00o/OooO0OO<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/datatransport/runtime/dagger/internal/SingleCheck;->UNINITIALIZED:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/SingleCheck;->instance:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/dagger/internal/SingleCheck;->provider:LOooO0Oo/OooO00o/OooO0OO;

    return-void
.end method

.method public static provider(LOooO0Oo/OooO00o/OooO0OO;)LOooO0Oo/OooO00o/OooO0OO;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "LOooO0Oo/OooO00o/OooO0OO<",
            "TT;>;T:",
            "Ljava/lang/Object;",
            ">(TP;)",
            "LOooO0Oo/OooO00o/OooO0OO<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/SingleCheck;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/android/datatransport/runtime/dagger/internal/SingleCheck;

    invoke-static {p0}, Lcom/google/android/datatransport/runtime/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LOooO0Oo/OooO00o/OooO0OO;

    invoke-direct {v0, p0}, Lcom/google/android/datatransport/runtime/dagger/internal/SingleCheck;-><init>(LOooO0Oo/OooO00o/OooO0OO;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/SingleCheck;->instance:Ljava/lang/Object;

    .line 2
    sget-object v1, Lcom/google/android/datatransport/runtime/dagger/internal/SingleCheck;->UNINITIALIZED:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/SingleCheck;->provider:LOooO0Oo/OooO00o/OooO0OO;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/SingleCheck;->instance:Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0}, LOooO0Oo/OooO00o/OooO0OO;->get()Ljava/lang/Object;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/SingleCheck;->instance:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/google/android/datatransport/runtime/dagger/internal/SingleCheck;->provider:LOooO0Oo/OooO00o/OooO0OO;

    :cond_1
    :goto_0
    return-object v0
.end method
