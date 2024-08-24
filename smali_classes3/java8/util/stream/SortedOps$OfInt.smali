.class public final Ljava8/util/stream/SortedOps$OfInt;
.super Ljava8/util/stream/IntPipeline$StatefulOp;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/SortedOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/IntPipeline$StatefulOp<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava8/util/stream/AbstractPipeline;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/AbstractPipeline<",
            "*",
            "Ljava/lang/Integer;",
            "*>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava8/util/stream/StreamShape;->INT_VALUE:Ljava8/util/stream/StreamShape;

    sget v1, Ljava8/util/stream/StreamOpFlag;->IS_ORDERED:I

    sget v2, Ljava8/util/stream/StreamOpFlag;->IS_SORTED:I

    or-int/2addr v1, v2

    invoke-direct {p0, p1, v0, v1}, Ljava8/util/stream/IntPipeline$StatefulOp;-><init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;I)V

    return-void
.end method


# virtual methods
.method public opEvaluateParallel(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Ljava8/util/function/IntFunction;)Ljava8/util/stream/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/PipelineHelper<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;",
            "Ljava8/util/function/IntFunction<",
            "[",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava8/util/stream/Node<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object p0, Ljava8/util/stream/StreamOpFlag;->SORTED:Ljava8/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Ljava8/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava8/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 2
    invoke-virtual {p1, p2, p0, p3}, Ljava8/util/stream/PipelineHelper;->evaluate(Ljava8/util/Spliterator;ZLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x1

    .line 3
    invoke-virtual {p1, p2, p0, p3}, Ljava8/util/stream/PipelineHelper;->evaluate(Ljava8/util/Spliterator;ZLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/Node$OfInt;

    .line 4
    invoke-interface {p0}, Ljava8/util/stream/Node$OfPrimitive;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 5
    invoke-static {p0}, Ljava8/util/J8Arrays;->parallelSort([I)V

    .line 6
    invoke-static {p0}, Ljava8/util/stream/Nodes;->node([I)Ljava8/util/stream/Node$OfInt;

    move-result-object p0

    return-object p0
.end method

.method public opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava8/util/stream/Sink<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava8/util/stream/Sink<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object p0, Ljava8/util/stream/StreamOpFlag;->SORTED:Ljava8/util/stream/StreamOpFlag;

    invoke-virtual {p0, p1}, Ljava8/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p2

    .line 3
    :cond_0
    sget-object p0, Ljava8/util/stream/StreamOpFlag;->SIZED:Ljava8/util/stream/StreamOpFlag;

    invoke-virtual {p0, p1}, Ljava8/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 4
    new-instance p0, Ljava8/util/stream/SortedOps$SizedIntSortingSink;

    invoke-direct {p0, p2}, Ljava8/util/stream/SortedOps$SizedIntSortingSink;-><init>(Ljava8/util/stream/Sink;)V

    return-object p0

    .line 5
    :cond_1
    new-instance p0, Ljava8/util/stream/SortedOps$IntSortingSink;

    invoke-direct {p0, p2}, Ljava8/util/stream/SortedOps$IntSortingSink;-><init>(Ljava8/util/stream/Sink;)V

    return-object p0
.end method
