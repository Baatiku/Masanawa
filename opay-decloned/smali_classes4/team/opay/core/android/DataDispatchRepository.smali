.class public final Lteam/opay/core/android/DataDispatchRepository;
.super Ljava/lang/Object;
.source "DataDispatchRepository.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/core/android/DataDispatchRepository$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \t2\u00020\u0001:\u0001\u0014B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\r\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\u0003R\u001c\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u001f\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u000e8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0015"
    }
    d2 = {
        "Lteam/opay/core/android/DataDispatchRepository;",
        "",
        "<init>",
        "()V",
        "Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;",
        "data",
        "",
        "f",
        "(Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;)V",
        "c",
        "Lye9;",
        "a",
        "Lye9;",
        "_aaDispatchData",
        "Lp3e;",
        "b",
        "Lp3e;",
        "d",
        "()Lp3e;",
        "aaDispatchData",
        "Companion",
        "sdk_release"
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
.field public static final c:Lteam/opay/core/android/DataDispatchRepository$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:Lid8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lid8<",
            "Lteam/opay/core/android/DataDispatchRepository;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Lye9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lye9<",
            "Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lp3e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3e<",
            "Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/core/android/DataDispatchRepository$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/core/android/DataDispatchRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/core/android/DataDispatchRepository;->c:Lteam/opay/core/android/DataDispatchRepository$Companion;

    .line 8
    .line 9
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 10
    .line 11
    new-instance v1, Ld13;

    .line 12
    .line 13
    invoke-direct {v1}, Ld13;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lteam/opay/core/android/DataDispatchRepository;->d:Lid8;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Lkotlinx/coroutines/flow/b;->a(Ljava/lang/Object;)Lye9;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lteam/opay/core/android/DataDispatchRepository;->a:Lye9;

    .line 10
    .line 11
    invoke-static {v0}, Ly86;->c(Lye9;)Lp3e;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lteam/opay/core/android/DataDispatchRepository;->b:Lp3e;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic a()Lteam/opay/core/android/DataDispatchRepository;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/core/android/DataDispatchRepository;->e()Lteam/opay/core/android/DataDispatchRepository;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic b()Lid8;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/core/android/DataDispatchRepository;->d:Lid8;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final e()Lteam/opay/core/android/DataDispatchRepository;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/core/android/DataDispatchRepository;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/core/android/DataDispatchRepository;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/DataDispatchRepository;->a:Lye9;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Lye9;->setValue(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final d()Lp3e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lp3e<",
            "Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/DataDispatchRepository;->b:Lp3e;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f(Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;)V
    .locals 1
    .param p1    # Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lteam/opay/core/android/DataDispatchRepository;->a:Lye9;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lxe9;->a(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
