.class final Lteam/opay/face/dialog/OFaceInProgressFragment$fakeProgress$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "OFaceInProgressFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/face/dialog/OFaceInProgressFragment;->Q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lzr2;",
        "Ljr2<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lzr2;",
        "",
        "<anonymous>",
        "(Lzr2;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.face.dialog.OFaceInProgressFragment$fakeProgress$1"
    f = "OFaceInProgressFragment.kt"
    l = {
        0x42,
        0x46,
        0x4a,
        0x4e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field I$0:I

.field label:I

.field final synthetic this$0:Lteam/opay/face/dialog/OFaceInProgressFragment;


# direct methods
.method public constructor <init>(Lteam/opay/face/dialog/OFaceInProgressFragment;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/face/dialog/OFaceInProgressFragment;",
            "Ljr2<",
            "-",
            "Lteam/opay/face/dialog/OFaceInProgressFragment$fakeProgress$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/face/dialog/OFaceInProgressFragment$fakeProgress$1;->this$0:Lteam/opay/face/dialog/OFaceInProgressFragment;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljr2<",
            "*>;)",
            "Ljr2<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lteam/opay/face/dialog/OFaceInProgressFragment$fakeProgress$1;

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/face/dialog/OFaceInProgressFragment$fakeProgress$1;->this$0:Lteam/opay/face/dialog/OFaceInProgressFragment;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lteam/opay/face/dialog/OFaceInProgressFragment$fakeProgress$1;-><init>(Lteam/opay/face/dialog/OFaceInProgressFragment;Ljr2;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/face/dialog/OFaceInProgressFragment$fakeProgress$1;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lzr2;Ljr2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzr2;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/face/dialog/OFaceInProgressFragment$fakeProgress$1;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/face/dialog/OFaceInProgressFragment$fakeProgress$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/face/dialog/OFaceInProgressFragment$fakeProgress$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lteam/opay/face/dialog/OFaceInProgressFragment$fakeProgress$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    const/4 v3, 0x3

    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x1

    .line 11
    if-eqz v1, :cond_4

    .line 12
    .line 13
    if-eq v1, v5, :cond_3

    .line 14
    .line 15
    if-eq v1, v4, :cond_2

    .line 16
    .line 17
    if-eq v1, v3, :cond_1

    .line 18
    .line 19
    if-ne v1, v2, :cond_0

    .line 20
    .line 21
    iget v1, p0, Lteam/opay/face/dialog/OFaceInProgressFragment$fakeProgress$1;->I$0:I

    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    goto/16 :goto_7

    .line 27
    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 31
    .line 32
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :cond_1
    iget v1, p0, Lteam/opay/face/dialog/OFaceInProgressFragment$fakeProgress$1;->I$0:I

    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_5

    .line 42
    :cond_2
    iget v1, p0, Lteam/opay/face/dialog/OFaceInProgressFragment$fakeProgress$1;->I$0:I

    .line 43
    .line 44
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_3
    iget v1, p0, Lteam/opay/face/dialog/OFaceInProgressFragment$fakeProgress$1;->I$0:I

    .line 49
    .line 50
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_4
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    :goto_0
    const/16 p1, 0x33

    .line 59
    .line 60
    if-ge v1, p1, :cond_6

    .line 61
    .line 62
    iput v1, p0, Lteam/opay/face/dialog/OFaceInProgressFragment$fakeProgress$1;->I$0:I

    .line 63
    .line 64
    iput v5, p0, Lteam/opay/face/dialog/OFaceInProgressFragment$fakeProgress$1;->label:I

    .line 65
    .line 66
    const-wide/16 v6, 0x14

    .line 67
    .line 68
    invoke-static {v6, v7, p0}, Lkotlinx/coroutines/DelayKt;->b(JLjr2;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-ne p1, v0, :cond_5

    .line 73
    .line 74
    return-object v0

    .line 75
    :cond_5
    :goto_1
    iget-object p1, p0, Lteam/opay/face/dialog/OFaceInProgressFragment$fakeProgress$1;->this$0:Lteam/opay/face/dialog/OFaceInProgressFragment;

    .line 76
    .line 77
    invoke-static {p1, v1}, Lteam/opay/face/dialog/OFaceInProgressFragment;->O(Lteam/opay/face/dialog/OFaceInProgressFragment;I)V

    .line 78
    .line 79
    .line 80
    add-int/2addr v1, v5

    .line 81
    goto :goto_0

    .line 82
    :cond_6
    const/16 v1, 0x33

    .line 83
    .line 84
    :goto_2
    const/16 p1, 0x51

    .line 85
    .line 86
    if-ge v1, p1, :cond_8

    .line 87
    .line 88
    iput v1, p0, Lteam/opay/face/dialog/OFaceInProgressFragment$fakeProgress$1;->I$0:I

    .line 89
    .line 90
    iput v4, p0, Lteam/opay/face/dialog/OFaceInProgressFragment$fakeProgress$1;->label:I

    .line 91
    .line 92
    const-wide/16 v6, 0x21

    .line 93
    .line 94
    invoke-static {v6, v7, p0}, Lkotlinx/coroutines/DelayKt;->b(JLjr2;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    if-ne p1, v0, :cond_7

    .line 99
    .line 100
    return-object v0

    .line 101
    :cond_7
    :goto_3
    iget-object p1, p0, Lteam/opay/face/dialog/OFaceInProgressFragment$fakeProgress$1;->this$0:Lteam/opay/face/dialog/OFaceInProgressFragment;

    .line 102
    .line 103
    invoke-static {p1, v1}, Lteam/opay/face/dialog/OFaceInProgressFragment;->O(Lteam/opay/face/dialog/OFaceInProgressFragment;I)V

    .line 104
    .line 105
    .line 106
    add-int/2addr v1, v5

    .line 107
    goto :goto_2

    .line 108
    :cond_8
    const/16 v1, 0x51

    .line 109
    .line 110
    :goto_4
    const/16 p1, 0x5d

    .line 111
    .line 112
    if-ge v1, p1, :cond_a

    .line 113
    .line 114
    iput v1, p0, Lteam/opay/face/dialog/OFaceInProgressFragment$fakeProgress$1;->I$0:I

    .line 115
    .line 116
    iput v3, p0, Lteam/opay/face/dialog/OFaceInProgressFragment$fakeProgress$1;->label:I

    .line 117
    .line 118
    const-wide/16 v6, 0x53

    .line 119
    .line 120
    invoke-static {v6, v7, p0}, Lkotlinx/coroutines/DelayKt;->b(JLjr2;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    if-ne p1, v0, :cond_9

    .line 125
    .line 126
    return-object v0

    .line 127
    :cond_9
    :goto_5
    iget-object p1, p0, Lteam/opay/face/dialog/OFaceInProgressFragment$fakeProgress$1;->this$0:Lteam/opay/face/dialog/OFaceInProgressFragment;

    .line 128
    .line 129
    invoke-static {p1, v1}, Lteam/opay/face/dialog/OFaceInProgressFragment;->O(Lteam/opay/face/dialog/OFaceInProgressFragment;I)V

    .line 130
    .line 131
    .line 132
    add-int/2addr v1, v5

    .line 133
    goto :goto_4

    .line 134
    :cond_a
    const/16 v1, 0x5d

    .line 135
    .line 136
    :goto_6
    const/16 p1, 0x64

    .line 137
    .line 138
    if-ge v1, p1, :cond_c

    .line 139
    .line 140
    iput v1, p0, Lteam/opay/face/dialog/OFaceInProgressFragment$fakeProgress$1;->I$0:I

    .line 141
    .line 142
    iput v2, p0, Lteam/opay/face/dialog/OFaceInProgressFragment$fakeProgress$1;->label:I

    .line 143
    .line 144
    const-wide/16 v3, 0x3e8

    .line 145
    .line 146
    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->b(JLjr2;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    if-ne p1, v0, :cond_b

    .line 151
    .line 152
    return-object v0

    .line 153
    :cond_b
    :goto_7
    iget-object p1, p0, Lteam/opay/face/dialog/OFaceInProgressFragment$fakeProgress$1;->this$0:Lteam/opay/face/dialog/OFaceInProgressFragment;

    .line 154
    .line 155
    invoke-static {p1, v1}, Lteam/opay/face/dialog/OFaceInProgressFragment;->O(Lteam/opay/face/dialog/OFaceInProgressFragment;I)V

    .line 156
    .line 157
    .line 158
    add-int/2addr v1, v5

    .line 159
    goto :goto_6

    .line 160
    :cond_c
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 161
    .line 162
    return-object p1
.end method
