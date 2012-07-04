.class public Lcom/sec/android/app/camera/CameraResolution;
.super Ljava/lang/Object;
.source "CameraResolution.java"


# static fields
.field public static final RESOLUTION_1248X672:I = 0x1d

.field public static final RESOLUTION_1280X720:I = 0xe

.field public static final RESOLUTION_1280X800:I = 0x16

.field public static final RESOLUTION_1280X960:I = 0xa

.field public static final RESOLUTION_1392X1392:I = 0x18

.field public static final RESOLUTION_1536X864:I = 0x1c

.field public static final RESOLUTION_1600X1200:I = 0x8

.field public static final RESOLUTION_1600X960:I = 0x9

.field public static final RESOLUTION_1632X880:I = 0x1b

.field public static final RESOLUTION_176X144:I = 0x13

.field public static final RESOLUTION_1920X1080:I = 0xd

.field public static final RESOLUTION_2048X1104:I = 0x1a

.field public static final RESOLUTION_2048X1152:I = 0x17

.field public static final RESOLUTION_2048X1232:I = 0x7

.field public static final RESOLUTION_2048X1536:I = 0x6

.field public static final RESOLUTION_2560X1440:I = 0x15

.field public static final RESOLUTION_2560X1536:I = 0x5

.field public static final RESOLUTION_2560X1920:I = 0x4

.field public static final RESOLUTION_2592X1944:I = 0x19

.field public static final RESOLUTION_3072X1856:I = 0x3

.field public static final RESOLUTION_3072X2304:I = 0x2

.field public static final RESOLUTION_320X240:I = 0x12

.field public static final RESOLUTION_3264X1836:I = 0x14

.field public static final RESOLUTION_3264X1968:I = 0x1

.field public static final RESOLUTION_3264X2448:I = 0x0

.field public static final RESOLUTION_352X288:I = 0x11

.field public static final RESOLUTION_400X240:I = 0x10

.field public static final RESOLUTION_640X480:I = 0xb

.field public static final RESOLUTION_720X480:I = 0xf

.field public static final RESOLUTION_800X480:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(II)I
    .locals 4
    .parameter "res1"
    .parameter "res2"

    .prologue
    .line 372
    invoke-static {p0}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v2

    invoke-static {p1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v3

    sub-int v1, v2, v3

    .line 373
    .local v1, dw:I
    invoke-static {p0}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    invoke-static {p1}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v3

    sub-int v0, v2, v3

    .line 375
    .local v0, dh:I
    if-lez v1, :cond_1

    .line 384
    .end local v1           #dw:I
    :cond_0
    :goto_0
    return v1

    .line 377
    .restart local v1       #dw:I
    :cond_1
    if-nez v1, :cond_0

    .line 378
    if-lez v0, :cond_2

    move v1, v0

    .line 379
    goto :goto_0

    .line 380
    :cond_2
    if-nez v0, :cond_0

    .line 381
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getCamcorderProfileQualityLevel(I)I
    .locals 1
    .parameter "resolution"

    .prologue
    .line 347
    packed-switch p0, :pswitch_data_0

    .line 361
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 349
    :pswitch_1
    const/4 v0, 0x6

    goto :goto_0

    .line 351
    :pswitch_2
    const/4 v0, 0x5

    goto :goto_0

    .line 353
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 355
    :pswitch_4
    const/4 v0, 0x3

    goto :goto_0

    .line 357
    :pswitch_5
    const/4 v0, 0x7

    goto :goto_0

    .line 359
    :pswitch_6
    const/4 v0, 0x2

    goto :goto_0

    .line 347
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static getIntHeight(I)I
    .locals 1
    .parameter "resid"

    .prologue
    const/16 v0, 0x1e0

    .line 115
    packed-switch p0, :pswitch_data_0

    .line 172
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    :pswitch_1
    return v0

    .line 117
    :pswitch_2
    const/16 v0, 0x990

    goto :goto_0

    .line 119
    :pswitch_3
    const/16 v0, 0x900

    goto :goto_0

    .line 121
    :pswitch_4
    const/16 v0, 0x7b0

    goto :goto_0

    .line 123
    :pswitch_5
    const/16 v0, 0x798

    goto :goto_0

    .line 125
    :pswitch_6
    const/16 v0, 0x780

    goto :goto_0

    .line 127
    :pswitch_7
    const/16 v0, 0x740

    goto :goto_0

    .line 129
    :pswitch_8
    const/16 v0, 0x72c

    goto :goto_0

    .line 132
    :pswitch_9
    const/16 v0, 0x600

    goto :goto_0

    .line 134
    :pswitch_a
    const/16 v0, 0x5a0

    goto :goto_0

    .line 136
    :pswitch_b
    const/16 v0, 0x4d0

    goto :goto_0

    .line 138
    :pswitch_c
    const/16 v0, 0x4b0

    goto :goto_0

    .line 140
    :pswitch_d
    const/16 v0, 0x570

    goto :goto_0

    .line 142
    :pswitch_e
    const/16 v0, 0x480

    goto :goto_0

    .line 144
    :pswitch_f
    const/16 v0, 0x450

    goto :goto_0

    .line 146
    :pswitch_10
    const/16 v0, 0x438

    goto :goto_0

    .line 149
    :pswitch_11
    const/16 v0, 0x3c0

    goto :goto_0

    .line 151
    :pswitch_12
    const/16 v0, 0x370

    goto :goto_0

    .line 153
    :pswitch_13
    const/16 v0, 0x360

    goto :goto_0

    .line 155
    :pswitch_14
    const/16 v0, 0x320

    goto :goto_0

    .line 160
    :pswitch_15
    const/16 v0, 0x2d0

    goto :goto_0

    .line 162
    :pswitch_16
    const/16 v0, 0x2a0

    goto :goto_0

    .line 167
    :pswitch_17
    const/16 v0, 0xf0

    goto :goto_0

    .line 169
    :pswitch_18
    const/16 v0, 0x90

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_11
        :pswitch_11
        :pswitch_1
        :pswitch_1
        :pswitch_10
        :pswitch_15
        :pswitch_1
        :pswitch_17
        :pswitch_0
        :pswitch_17
        :pswitch_18
        :pswitch_8
        :pswitch_a
        :pswitch_14
        :pswitch_e
        :pswitch_d
        :pswitch_5
        :pswitch_f
        :pswitch_12
        :pswitch_13
        :pswitch_16
    .end packed-switch
.end method

.method public static getIntWidth(I)I
    .locals 1
    .parameter "resid"

    .prologue
    .line 61
    packed-switch p0, :pswitch_data_0

    .line 111
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 65
    :pswitch_1
    const/16 v0, 0xcc0

    goto :goto_0

    .line 68
    :pswitch_2
    const/16 v0, 0xc00

    goto :goto_0

    .line 70
    :pswitch_3
    const/16 v0, 0xa20

    goto :goto_0

    .line 74
    :pswitch_4
    const/16 v0, 0xa00

    goto :goto_0

    .line 79
    :pswitch_5
    const/16 v0, 0x800

    goto :goto_0

    .line 81
    :pswitch_6
    const/16 v0, 0x780

    goto :goto_0

    .line 83
    :pswitch_7
    const/16 v0, 0x660

    goto :goto_0

    .line 86
    :pswitch_8
    const/16 v0, 0x640

    goto :goto_0

    .line 88
    :pswitch_9
    const/16 v0, 0x600

    goto :goto_0

    .line 90
    :pswitch_a
    const/16 v0, 0x570

    goto :goto_0

    .line 92
    :pswitch_b
    const/16 v0, 0x280

    goto :goto_0

    .line 94
    :pswitch_c
    const/16 v0, 0x320

    goto :goto_0

    .line 98
    :pswitch_d
    const/16 v0, 0x500

    goto :goto_0

    .line 100
    :pswitch_e
    const/16 v0, 0x4e0

    goto :goto_0

    .line 102
    :pswitch_f
    const/16 v0, 0x2d0

    goto :goto_0

    .line 104
    :pswitch_10
    const/16 v0, 0x190

    goto :goto_0

    .line 106
    :pswitch_11
    const/16 v0, 0x140

    goto :goto_0

    .line 108
    :pswitch_12
    const/16 v0, 0xb0

    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_8
        :pswitch_8
        :pswitch_d
        :pswitch_b
        :pswitch_c
        :pswitch_6
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_1
        :pswitch_4
        :pswitch_d
        :pswitch_5
        :pswitch_a
        :pswitch_3
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_e
    .end packed-switch
.end method

.method public static getResolutionID(Ljava/lang/String;)I
    .locals 1
    .parameter "value"

    .prologue
    .line 283
    const-string v0, "3264x2448"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    const/4 v0, 0x0

    .line 342
    :goto_0
    return v0

    .line 285
    :cond_0
    const-string v0, "3264x1968"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    const/4 v0, 0x1

    goto :goto_0

    .line 287
    :cond_1
    const-string v0, "3264x1836"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    const/16 v0, 0x14

    goto :goto_0

    .line 289
    :cond_2
    const-string v0, "3072x2304"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 290
    const/4 v0, 0x2

    goto :goto_0

    .line 291
    :cond_3
    const-string v0, "3072x1856"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 292
    const/4 v0, 0x3

    goto :goto_0

    .line 293
    :cond_4
    const-string v0, "2592x1944"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 294
    const/16 v0, 0x19

    goto :goto_0

    .line 295
    :cond_5
    const-string v0, "2560x1920"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 296
    const/4 v0, 0x4

    goto :goto_0

    .line 297
    :cond_6
    const-string v0, "2560x1536"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 298
    const/4 v0, 0x5

    goto :goto_0

    .line 299
    :cond_7
    const-string v0, "2560x1440"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 300
    const/16 v0, 0x15

    goto :goto_0

    .line 301
    :cond_8
    const-string v0, "2048x1536"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 302
    const/4 v0, 0x6

    goto :goto_0

    .line 303
    :cond_9
    const-string v0, "2048x1232"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 304
    const/4 v0, 0x7

    goto :goto_0

    .line 305
    :cond_a
    const-string v0, "2048x1152"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 306
    const/16 v0, 0x17

    goto :goto_0

    .line 307
    :cond_b
    const-string v0, "2048x1104"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 308
    const/16 v0, 0x1a

    goto :goto_0

    .line 309
    :cond_c
    const-string v0, "1920x1080"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 310
    const/16 v0, 0xd

    goto/16 :goto_0

    .line 311
    :cond_d
    const-string v0, "1632x880"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 312
    const/16 v0, 0x1b

    goto/16 :goto_0

    .line 313
    :cond_e
    const-string v0, "1600x1200"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 314
    const/16 v0, 0x8

    goto/16 :goto_0

    .line 315
    :cond_f
    const-string v0, "1600x960"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 316
    const/16 v0, 0x9

    goto/16 :goto_0

    .line 317
    :cond_10
    const-string v0, "1536x864"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 318
    const/16 v0, 0x1c

    goto/16 :goto_0

    .line 319
    :cond_11
    const-string v0, "1392x1392"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 320
    const/16 v0, 0x18

    goto/16 :goto_0

    .line 321
    :cond_12
    const-string v0, "1280x960"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 322
    const/16 v0, 0xa

    goto/16 :goto_0

    .line 323
    :cond_13
    const-string v0, "800x480"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 324
    const/16 v0, 0xc

    goto/16 :goto_0

    .line 325
    :cond_14
    const-string v0, "640x480"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 326
    const/16 v0, 0xb

    goto/16 :goto_0

    .line 327
    :cond_15
    const-string v0, "1280x800"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 328
    const/16 v0, 0x16

    goto/16 :goto_0

    .line 329
    :cond_16
    const-string v0, "1280x720"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 330
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 331
    :cond_17
    const-string v0, "1248x672"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 332
    const/16 v0, 0x1d

    goto/16 :goto_0

    .line 333
    :cond_18
    const-string v0, "720x480"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 334
    const/16 v0, 0xf

    goto/16 :goto_0

    .line 335
    :cond_19
    const-string v0, "400x240"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 336
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 337
    :cond_1a
    const-string v0, "320x240"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 338
    const/16 v0, 0x12

    goto/16 :goto_0

    .line 339
    :cond_1b
    const-string v0, "176x144"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 340
    const/16 v0, 0x13

    goto/16 :goto_0

    .line 342
    :cond_1c
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method public static getResolutionString(I)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 218
    packed-switch p0, :pswitch_data_0

    .line 278
    :pswitch_0
    const-string v0, "176x144"

    :goto_0
    return-object v0

    .line 220
    :pswitch_1
    const-string v0, "3264x2448"

    goto :goto_0

    .line 222
    :pswitch_2
    const-string v0, "3264x1968"

    goto :goto_0

    .line 224
    :pswitch_3
    const-string v0, "3264x1836"

    goto :goto_0

    .line 226
    :pswitch_4
    const-string v0, "3072x2304"

    goto :goto_0

    .line 228
    :pswitch_5
    const-string v0, "3072x1856"

    goto :goto_0

    .line 230
    :pswitch_6
    const-string v0, "2592x1944"

    goto :goto_0

    .line 232
    :pswitch_7
    const-string v0, "2560x1920"

    goto :goto_0

    .line 234
    :pswitch_8
    const-string v0, "2560x1536"

    goto :goto_0

    .line 236
    :pswitch_9
    const-string v0, "2560x1440"

    goto :goto_0

    .line 238
    :pswitch_a
    const-string v0, "2048x1536"

    goto :goto_0

    .line 240
    :pswitch_b
    const-string v0, "2048x1232"

    goto :goto_0

    .line 242
    :pswitch_c
    const-string v0, "2048x1152"

    goto :goto_0

    .line 244
    :pswitch_d
    const-string v0, "2048x1104"

    goto :goto_0

    .line 246
    :pswitch_e
    const-string v0, "1920x1080"

    goto :goto_0

    .line 248
    :pswitch_f
    const-string v0, "1632x880"

    goto :goto_0

    .line 250
    :pswitch_10
    const-string v0, "1600x1200"

    goto :goto_0

    .line 252
    :pswitch_11
    const-string v0, "1600x960"

    goto :goto_0

    .line 254
    :pswitch_12
    const-string v0, "1536x864"

    goto :goto_0

    .line 256
    :pswitch_13
    const-string v0, "1392x1392"

    goto :goto_0

    .line 258
    :pswitch_14
    const-string v0, "1280x960"

    goto :goto_0

    .line 260
    :pswitch_15
    const-string v0, "1280x800"

    goto :goto_0

    .line 262
    :pswitch_16
    const-string v0, "800x480"

    goto :goto_0

    .line 264
    :pswitch_17
    const-string v0, "640x480"

    goto :goto_0

    .line 266
    :pswitch_18
    const-string v0, "1248x672"

    goto :goto_0

    .line 268
    :pswitch_19
    const-string v0, "1280x720"

    goto :goto_0

    .line 270
    :pswitch_1a
    const-string v0, "720x480"

    goto :goto_0

    .line 272
    :pswitch_1b
    const-string v0, "400x240"

    goto :goto_0

    .line 274
    :pswitch_1c
    const-string v0, "320x240"

    goto :goto_0

    .line 276
    :pswitch_1d
    const-string v0, "176x144"

    goto :goto_0

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_10
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_16
        :pswitch_e
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_0
        :pswitch_1c
        :pswitch_1d
        :pswitch_3
        :pswitch_9
        :pswitch_15
        :pswitch_c
        :pswitch_13
        :pswitch_6
        :pswitch_d
        :pswitch_f
        :pswitch_12
        :pswitch_18
    .end packed-switch
.end method

.method public static isWideResolution(I)Z
    .locals 1
    .parameter "resid"

    .prologue
    const/4 v0, 0x1

    .line 176
    packed-switch p0, :pswitch_data_0

    .line 213
    :pswitch_0
    const/4 v0, 0x0

    :pswitch_1
    return v0

    .line 176
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
