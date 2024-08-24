.class public Lcom/android/camera/db/item/DbItemSaveTask;
.super Lcom/android/camera/db/item/DbItemBase;
.source "DbItemSaveTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/db/item/DbItemBase<",
        "Lcom/android/camera/db/element/SaveTask;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "DbItemSaveTask"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/db/item/DbItemBase;-><init>()V

    return-void
.end method

.method private clearTask(Landroid/content/Context;Lcom/android/camera/db/element/SaveTask;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/android/camera/db/element/SaveTask;->isValid()Z

    move-result p0

    const-string v0, "DbItemSaveTask"

    if-nez p0, :cond_0

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearTask: not valid, remove:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/camera/db/element/SaveTask;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {p1, p2}, Lcom/xiaomi/camera/parallelservice/util/ParallelUtil;->removeAssociatedThumbnailFile(Landroid/content/Context;Lcom/android/camera/db/element/SaveTask;)V

    .line 4
    invoke-virtual {p2}, Lcom/android/camera/db/element/SaveTask;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/camera/parallelservice/util/ParallelUtil;->deleteRecordByPath(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearTask: mark departed: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/camera/db/element/SaveTask;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {p1, p2}, Lcom/xiaomi/camera/parallelservice/util/ParallelUtil;->markTaskFinish(Landroid/content/Context;Lcom/android/camera/db/element/SaveTask;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public clearDepartedTask(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/db/item/DbItemSaveTask;->getItemByPath(Ljava/lang/String;)Lcom/android/camera/db/element/SaveTask;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearDepartedTask: path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DbItemSaveTask"

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/android/camera/db/item/DbItemSaveTask;->clearTask(Landroid/content/Context;Lcom/android/camera/db/element/SaveTask;)V

    :cond_1
    return-void
.end method

.method public createItem(J)Lcom/android/camera/db/element/SaveTask;
    .locals 0

    .line 2
    new-instance p0, Lcom/android/camera/db/element/SaveTask;

    invoke-direct {p0}, Lcom/android/camera/db/element/SaveTask;-><init>()V

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/db/element/SaveTask;->setStartTime(Ljava/lang/Long;)V

    return-object p0
.end method

.method public bridge synthetic createItem(J)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/db/item/DbItemSaveTask;->createItem(J)Lcom/android/camera/db/element/SaveTask;

    move-result-object p0

    return-object p0
.end method

.method public endItem(Lcom/android/camera/db/element/SaveTask;J)Lcom/android/camera/db/element/SaveTask;
    .locals 0

    return-object p1
.end method

.method public bridge synthetic endItem(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/db/element/SaveTask;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/db/item/DbItemSaveTask;->endItem(Lcom/android/camera/db/element/SaveTask;J)Lcom/android/camera/db/element/SaveTask;

    move-result-object p0

    return-object p0
.end method

.method public getDao()Lorg/greenrobot/greendao/AbstractDao;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "Lcom/android/camera/db/element/SaveTask;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/db/item/DbItemBase;->getDaoSession()Lcom/android/camera/db/greendao/DaoSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/db/greendao/DaoSession;->getSaveTaskDao()Lcom/android/camera/db/greendao/SaveTaskDao;

    move-result-object p0

    return-object p0
.end method

.method public getItemByMediaId(Ljava/lang/Long;)Lcom/android/camera/db/element/SaveTask;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/db/item/DbItemSaveTask;->getDao()Lorg/greenrobot/greendao/AbstractDao;

    move-result-object p0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p0

    sget-object v0, Lcom/android/camera/db/greendao/SaveTaskDao$Properties;->MediaStoreId:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/db/element/SaveTask;

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getItemByMediaId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DbItemSaveTask"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public bridge synthetic getItemByMediaId(Ljava/lang/Long;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/db/item/DbItemSaveTask;->getItemByMediaId(Ljava/lang/Long;)Lcom/android/camera/db/element/SaveTask;

    move-result-object p0

    return-object p0
.end method

.method public getItemByPath(Ljava/lang/String;)Lcom/android/camera/db/element/SaveTask;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/db/item/DbItemSaveTask;->getDao()Lorg/greenrobot/greendao/AbstractDao;

    move-result-object p0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p0

    sget-object v0, Lcom/android/camera/db/greendao/SaveTaskDao$Properties;->Path:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/db/element/SaveTask;

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getItemByPath: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DbItemSaveTask"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public bridge synthetic getItemByPath(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/db/item/DbItemSaveTask;->getItemByPath(Ljava/lang/String;)Lcom/android/camera/db/element/SaveTask;

    move-result-object p0

    return-object p0
.end method

.method public getOrderProperty()Lorg/greenrobot/greendao/Property;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/camera/db/greendao/SaveTaskDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    return-object p0
.end method

.method public markAllDepartedTask(I)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/db/item/DbItemBase;->getAllItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/db/element/SaveTask;

    .line 6
    invoke-virtual {v4, v2, v3, p1}, Lcom/android/camera/db/element/SaveTask;->isDeparted(JI)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7
    invoke-direct {p0, v1, v4}, Lcom/android/camera/db/item/DbItemSaveTask;->clearTask(Landroid/content/Context;Lcom/android/camera/db/element/SaveTask;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public provideTableName()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "tasks"

    return-object p0
.end method

.method public query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/db/item/DbItemSaveTask;->getDao()Lorg/greenrobot/greendao/AbstractDao;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lorg/greenrobot/greendao/AbstractDao;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "queryRaw: count = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p2

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DbItemSaveTask"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method
