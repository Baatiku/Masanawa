.class public final Lteam/opay/pay/messages/MessageDao_Impl;
.super Lteam/opay/pay/messages/MessageDao;
.source "MessageDao_Impl.java"


# instance fields
.field public final a:Landroidx/room/RoomDatabase;

.field public final b:Landroidx/room/EntityInsertAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertAdapter<",
            "Lteam/opay/pay/messages/Message;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lteam/opay/pay/database/RoomTypeConverters;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1
    .param p1    # Landroidx/room/RoomDatabase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/messages/MessageDao;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lteam/opay/pay/database/RoomTypeConverters;

    .line 5
    .line 6
    invoke-direct {v0}, Lteam/opay/pay/database/RoomTypeConverters;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lteam/opay/pay/messages/MessageDao_Impl;->c:Lteam/opay/pay/database/RoomTypeConverters;

    .line 10
    .line 11
    iput-object p1, p0, Lteam/opay/pay/messages/MessageDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 12
    .line 13
    new-instance p1, Lteam/opay/pay/messages/MessageDao_Impl$a;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lteam/opay/pay/messages/MessageDao_Impl$a;-><init>(Lteam/opay/pay/messages/MessageDao_Impl;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lteam/opay/pay/messages/MessageDao_Impl;->b:Landroidx/room/EntityInsertAdapter;

    .line 19
    .line 20
    return-void
.end method

.method public static bridge synthetic a(Lteam/opay/pay/messages/MessageDao_Impl;)Lteam/opay/pay/database/RoomTypeConverters;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/messages/MessageDao_Impl;->c:Lteam/opay/pay/database/RoomTypeConverters;

    .line 2
    .line 3
    return-object p0
.end method

.method public static b()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
