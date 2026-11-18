.class public final Lteam/opay/core/common/android/StatusBarUtil;
.super Ljava/lang/Object;
.source "StatusBarUtil.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/core/common/android/StatusBarUtil$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\u0018\u0000 \u00042\u00020\u0001:\u0001\u0005B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "Lteam/opay/core/common/android/StatusBarUtil;",
        "",
        "<init>",
        "()V",
        "a",
        "Companion",
        "common-base_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lteam/opay/core/common/android/StatusBarUtil$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:I

.field public static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/core/common/android/StatusBarUtil$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/core/common/android/StatusBarUtil$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/core/common/android/StatusBarUtil;->a:Lteam/opay/core/common/android/StatusBarUtil$Companion;

    .line 8
    .line 9
    sget v0, Lteam/opay/core/common/R$id;->common_statusbarutil_fake_status_bar_view:I

    .line 10
    .line 11
    sput v0, Lteam/opay/core/common/android/StatusBarUtil;->b:I

    .line 12
    .line 13
    sget v0, Lteam/opay/core/common/R$id;->common_statusbarutil_translucent_view:I

    .line 14
    .line 15
    sput v0, Lteam/opay/core/common/android/StatusBarUtil;->c:I

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
