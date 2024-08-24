.class public Ljava8/util/stream/DistinctOps$KeysAndNullSet$1;
.super Ljava/lang/Object;
.source "DistinctOps.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/DistinctOps$KeysAndNullSet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end field

.field public nullDelivered:Z

.field public final synthetic this$0:Ljava8/util/stream/DistinctOps$KeysAndNullSet;


# direct methods
.method public constructor <init>(Ljava8/util/stream/DistinctOps$KeysAndNullSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljava8/util/stream/DistinctOps$KeysAndNullSet$1;->this$0:Ljava8/util/stream/DistinctOps$KeysAndNullSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Ljava8/util/stream/DistinctOps$KeysAndNullSet$1;->nullDelivered:Z

    .line 3
    iget-object p1, p0, Ljava8/util/stream/DistinctOps$KeysAndNullSet$1;->this$0:Ljava8/util/stream/DistinctOps$KeysAndNullSet;

    iget-object p1, p1, Ljava8/util/stream/DistinctOps$KeysAndNullSet;->keys:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Ljava8/util/stream/DistinctOps$KeysAndNullSet$1;->it:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ljava8/util/stream/DistinctOps$KeysAndNullSet$1;->nullDelivered:Z

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2
    :cond_0
    iget-object p0, p0, Ljava8/util/stream/DistinctOps$KeysAndNullSet$1;->it:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ljava8/util/stream/DistinctOps$KeysAndNullSet$1;->nullDelivered:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ljava8/util/stream/DistinctOps$KeysAndNullSet$1;->nullDelivered:Z

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    iget-object p0, p0, Ljava8/util/stream/DistinctOps$KeysAndNullSet$1;->it:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
