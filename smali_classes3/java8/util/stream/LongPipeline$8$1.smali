.class public Ljava8/util/stream/LongPipeline$8$1;
.super Ljava8/util/stream/Sink$ChainedLong;
.source "LongPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/LongPipeline$8;->opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/Sink$ChainedLong<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Ljava8/util/stream/LongPipeline$8;


# direct methods
.method public constructor <init>(Ljava8/util/stream/LongPipeline$8;Ljava8/util/stream/Sink;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljava8/util/stream/LongPipeline$8$1;->this$1:Ljava8/util/stream/LongPipeline$8;

    invoke-direct {p0, p2}, Ljava8/util/stream/Sink$ChainedLong;-><init>(Ljava8/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Ljava8/util/stream/LongPipeline$8$1;->this$1:Ljava8/util/stream/LongPipeline$8;

    iget-object v0, v0, Ljava8/util/stream/LongPipeline$8;->val$predicate:Ljava8/util/function/LongPredicate;

    invoke-interface {v0, p1, p2}, Ljava8/util/function/LongPredicate;->test(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Ljava8/util/stream/Sink$ChainedLong;->downstream:Ljava8/util/stream/Sink;

    invoke-interface {p0, p1, p2}, Ljava8/util/stream/Sink;->accept(J)V

    :cond_0
    return-void
.end method

.method public begin(J)V
    .locals 0

    .line 1
    iget-object p0, p0, Ljava8/util/stream/Sink$ChainedLong;->downstream:Ljava8/util/stream/Sink;

    const-wide/16 p1, -0x1

    invoke-interface {p0, p1, p2}, Ljava8/util/stream/Sink;->begin(J)V

    return-void
.end method
